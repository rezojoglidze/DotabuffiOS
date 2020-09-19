//
//  TeamDetailsInteractor.swift
//  DotabuffiOS
//
//  Created by Rezo Joglidze on 9/19/20.
//Copyright © 2020 Rezo Joglidze. All rights reserved.
//

import Foundation
import Viperit

struct TeamDetailsItem {
    let title: String
    let description: String
}

// MARK: - TeamDetailsInteractor Class
final class TeamDetailsInteractor: Interactor {
    
    func secondsToTimeString(seconds : Int) -> String{
        let date = Date(timeIntervalSince1970: TimeInterval(seconds))
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy HH:mm"
        dateFormatter.timeZone = .current
        return dateFormatter.string(from: date)
    }
    
    func configureTeamDetailItems(teamDetails: TeamDetails) {
        let teamDetailsItems = [
            TeamDetailsItem(title: "სახელი", description: teamDetails.name),
            TeamDetailsItem(title: "ბოლო მატჩი", description: secondsToTimeString(seconds: teamDetails.lastMatchTime)),
            TeamDetailsItem(title: "რეიტინგი", description: String(teamDetails.rating)),
            TeamDetailsItem(title: "მოგების რაოდენობა", description: String(teamDetails.wins)),
            TeamDetailsItem(title: "წაგების რაოდენობა", description: String(teamDetails.losses))
        ]
        self.presenter.didGetTeamDetails(teamDetails: teamDetailsItems)
    }
}

// MARK: - TeamDetailsInteractor API
extension TeamDetailsInteractor: TeamDetailsInteractorApi {
    func getTeamDetails(teamId: Int) {
        BaseAPI.shared.getTeamDetails(teamId: teamId) {[weak self] (response) in
            switch response {
            case .success(let teamDetails):
                self?.configureTeamDetailItems(teamDetails: teamDetails)
            case .failure(let error):
                print(error)
            }
        }
    }
}

// MARK: - Interactor Viper Components Api
private extension TeamDetailsInteractor {
    var presenter: TeamDetailsPresenterApi {
        return _presenter as! TeamDetailsPresenterApi
    }
}
