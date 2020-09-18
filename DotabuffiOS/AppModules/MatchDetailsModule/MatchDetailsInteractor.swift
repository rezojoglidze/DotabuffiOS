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
}

// MARK: - MatchDetailsInteractor API
extension MatchDetailsInteractor: MatchDetailsInteractorApi {
    func getMatchDetails(id: Int) {
        BaseAPI.shared.getMatchDetails(id: id) { [weak self] (result) in
            
            switch result {
            case .success(let matchDetails):
                self?.presenter.didGetMatchDetails(matchDetails: matchDetails)
            case .failure(let error):
                print(error)
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
