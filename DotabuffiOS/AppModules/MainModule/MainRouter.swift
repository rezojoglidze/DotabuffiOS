//
//  MainRouter.swift
//  DotabuffiOS
//
//  Created by Rezo Joglidze on 9/18/20.
//Copyright © 2020 Rezo Joglidze. All rights reserved.
//

import Foundation
import Viperit

// MARK: - MainRouter class
final class MainRouter: Router {
}

// MARK: - MainRouter API
extension MainRouter: MainRouterApi {
    func showMatchDetails(id: Int) {
        let module = AppModules.matchDetails.build()
        module.router.show(from: viewController, embedInNavController: false, setupData: id)
    }
}

// MARK: - Main Viper Components
private extension MainRouter {
    var presenter: MainPresenterApi {
        return _presenter as! MainPresenterApi
    }
}
