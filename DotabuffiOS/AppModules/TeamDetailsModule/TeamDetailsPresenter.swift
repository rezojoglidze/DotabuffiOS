//
//  TeamDetailsPresenter.swift
//  DotabuffiOS
//
//  Created by Rezo Joglidze on 9/19/20.
//Copyright © 2020 Rezo Joglidze. All rights reserved.
//

import Foundation
import Viperit

// MARK: - TeamDetailsPresenter Class
final class TeamDetailsPresenter: Presenter {
    override func setupView(data: Any) {
        if let teamId = data as? Int {
            view.startLoading()
            self.interactor.getTeamDetails(teamId: teamId)
        }
    }
}

// MARK: - TeamDetailsPresenter API
extension TeamDetailsPresenter: TeamDetailsPresenterApi {
    func didGetTeamDetails(teamDetails: [TeamDetailsItem]) {
        view.upateView(teamDetails: teamDetails)
    }
}

// MARK: - TeamDetails Viper Components
private extension TeamDetailsPresenter {
    var view: TeamDetailsViewApi {
        return _view as! TeamDetailsViewApi
    }
    var interactor: TeamDetailsInteractorApi {
        return _interactor as! TeamDetailsInteractorApi
    }
    var router: TeamDetailsRouterApi {
        return _router as! TeamDetailsRouterApi
    }
}
