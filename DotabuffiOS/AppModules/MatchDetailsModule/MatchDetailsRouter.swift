//
//  MatchDetailsRouter.swift
//  DotabuffiOS
//
//  Created by Rezo Joglidze on 9/18/20.
//Copyright © 2020 Rezo Joglidze. All rights reserved.
//

import Foundation
import Viperit

// MARK: - MatchDetailsRouter class
final class MatchDetailsRouter: Router {
}

// MARK: - MatchDetailsRouter API
extension MatchDetailsRouter: MatchDetailsRouterApi {
    func showApiCallErrorAlert() {
        let alert = UIAlertController(title: nil, message: "სამწუხაროდ, მოხდა შეფერხება. სცადეთ მოგვიანებით.", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        viewController.present(alert, animated: true, completion: nil)
    }
    
    func showTeamDetails(teamId: Int) {
        let module = AppModules.teamDetails.build()
        module.router.show(from: viewController, embedInNavController: false, setupData: teamId)
    }
}

// MARK: - MatchDetails Viper Components
private extension MatchDetailsRouter {
    var presenter: MatchDetailsPresenterApi {
        return _presenter as! MatchDetailsPresenterApi
    }
}
