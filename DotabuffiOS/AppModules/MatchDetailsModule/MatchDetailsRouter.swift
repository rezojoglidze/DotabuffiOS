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
}

// MARK: - MatchDetails Viper Components
private extension MatchDetailsRouter {
    var presenter: MatchDetailsPresenterApi {
        return _presenter as! MatchDetailsPresenterApi
    }
}
