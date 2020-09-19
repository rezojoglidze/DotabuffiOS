//
//  MatchDetailsModuleApi.swift
//  DotabuffiOS
//
//  Created by Rezo Joglidze on 9/18/20.
//Copyright © 2020 Rezo Joglidze. All rights reserved.
//

import Viperit

//MARK: - MatchDetailsRouter API
protocol MatchDetailsRouterApi: RouterProtocol {
    func showTeamDetails(teamId: Int)
    func showApiCallErrorAlert()
}

//MARK: - MatchDetailsView API
protocol MatchDetailsViewApi: UserInterfaceProtocol {
    func startLoading()
    func updateView(matchDetails: MatchDetails)
}

//MARK: - MatchDetailsPresenter API
protocol MatchDetailsPresenterApi: PresenterProtocol {
    
    //View -> Presenter
    func didGetTeamIdForDetails(teamId: Int)
    func didTapRadian()
    func didTapDire()
    
    //Interactor -> Presenter
    func didGetMatchDetails(matchDetails: MatchDetails)
    func didGetApiCallError()
}

//MARK: - MatchDetailsInteractor API
protocol MatchDetailsInteractorApi: InteractorProtocol {
    func getMatchDetails(matchId: Int)
    func getRadianTeamIdForDetails()
    func getDireTeamIdForDetails()
}
