//
//  MatchDetailsPresenter.swift
//  DotabuffiOS
//
//  Created by Rezo Joglidze on 9/18/20.
//Copyright © 2020 Rezo Joglidze. All rights reserved.
//

import Foundation
import Viperit

// MARK: - MatchDetailsPresenter Class
final class MatchDetailsPresenter: Presenter {
    
   override func setupView(data: Any) {
        if let matchId = data as? Int {
            view.startLoading()
            self.interactor.getMatchDetails(id: matchId)
        }
    }
}

// MARK: - MatchDetailsPresenter API
extension MatchDetailsPresenter: MatchDetailsPresenterApi {
    
    func didGetTeamIdForDetails(teamId: Int) {
        router.showTeamDetails(teamId: teamId)
    }
    
    func didGetMatchDetails(matchDetails: MatchDetails) {
        view.updateView(matchDetails: matchDetails)
    }
}

// MARK: - MatchDetails Viper Components
private extension MatchDetailsPresenter {
    var view: MatchDetailsViewApi {
        return _view as! MatchDetailsViewApi
    }
    var interactor: MatchDetailsInteractorApi {
        return _interactor as! MatchDetailsInteractorApi
    }
    var router: MatchDetailsRouterApi {
        return _router as! MatchDetailsRouterApi
    }
}
