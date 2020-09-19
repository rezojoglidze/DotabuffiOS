//
//  TeamDetailsModuleApi.swift
//  DotabuffiOS
//
//  Created by Rezo Joglidze on 9/19/20.
//Copyright © 2020 Rezo Joglidze. All rights reserved.
//

import Viperit

//MARK: - TeamDetailsRouter API
protocol TeamDetailsRouterApi: RouterProtocol {
    func showApiCallErrorAlert()
}

//MARK: - TeamDetailsView API
protocol TeamDetailsViewApi: UserInterfaceProtocol {
    func startLoading()
    func upateView(teamDetails: [TeamDetailsItem])
}

//MARK: - TeamDetailsPresenter API
protocol TeamDetailsPresenterApi: PresenterProtocol {
    
    //Interactor -> Presenter
    func didGetTeamDetails(teamDetails: [TeamDetailsItem])
    func didGetApiCallError()
}

//MARK: - TeamDetailsInteractor API
protocol TeamDetailsInteractorApi: InteractorProtocol {
    func getTeamDetails(teamId: Int)
}
