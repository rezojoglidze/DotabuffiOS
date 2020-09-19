//
//  TeamDetailsRouter.swift
//  DotabuffiOS
//
//  Created by Rezo Joglidze on 9/19/20.
//Copyright © 2020 Rezo Joglidze. All rights reserved.
//

import Foundation
import Viperit

// MARK: - TeamDetailsRouter class
final class TeamDetailsRouter: Router {
}

// MARK: - TeamDetailsRouter API
extension TeamDetailsRouter: TeamDetailsRouterApi {
    func showApiCallErrorAlert() {
        let alert = UIAlertController(title: nil, message: "სამწუხაროდ, მოხდა შეფერხება. სცადეთ მოგვიანებით.", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        viewController.present(alert, animated: true, completion: nil)
    }
}

// MARK: - TeamDetails Viper Components
private extension TeamDetailsRouter {
    var presenter: TeamDetailsPresenterApi {
        return _presenter as! TeamDetailsPresenterApi
    }
}
