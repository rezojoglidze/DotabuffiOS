//
//  MatchDetailsInteractor.swift
//  DotabuffiOS
//
//  Created by Rezo Joglidze on 9/18/20.
//Copyright © 2020 Rezo Joglidze. All rights reserved.
//

import Foundation
import Viperit

// MARK: - MatchDetailsInteractor Class
final class MatchDetailsInteractor: Interactor {
    private var matchDetails: MatchDetails?
}

// MARK: - MatchDetailsInteractor API
extension MatchDetailsInteractor: MatchDetailsInteractorApi {
    func getRadianTeamIdForDetails() {
        if let radianTeam = matchDetails?.radiantTeam {
            presenter.didGetTeamIdForDetails(teamId: radianTeam.teamId)
        }
    }
    
    func getDireTeamIdForDetails() {
        if let direTeam = matchDetails?.direTeam {
            presenter.didGetTeamIdForDetails(teamId: direTeam.teamId)
        }
    }
    
    func getMatchDetails(matchId: Int) {
        BaseAPI.shared.getMatchDetails(matchId: matchId) { [weak self] (result) in
            
            switch result {
            case .success(let matchDetails):
                self?.matchDetails = matchDetails
                self?.presenter.didGetMatchDetails(matchDetails: matchDetails)
            case .failure( _):
                self?.presenter.didGetApiCallError()
            }
        }
    }
}

// MARK: - Interactor Viper Components Api
private extension MatchDetailsInteractor {
    var presenter: MatchDetailsPresenterApi {
        return _presenter as! MatchDetailsPresenterApi
    }
}
