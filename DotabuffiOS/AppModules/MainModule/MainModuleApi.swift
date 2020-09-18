//
//  MainModuleApi.swift
//  DotabuffiOS
//
//  Created by Rezo Joglidze on 9/18/20.
//Copyright © 2020 Rezo Joglidze. All rights reserved.
//

import Viperit

//MARK: - MainRouter API
protocol MainRouterApi: RouterProtocol {
    func showMatchDetails(id: Int)
}

//MARK: - MainView API
protocol MainViewApi: UserInterfaceProtocol {
}

//MARK: - MainPresenter API
protocol MainPresenterApi: PresenterProtocol {
    //View -> Presenter
    func didGetMatchIdForDetails(id: Int)
}

//MARK: - MainInteractor API
protocol MainInteractorApi: InteractorProtocol {
}
