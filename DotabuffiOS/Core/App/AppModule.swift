//
//  AppModule.swift
//  Covid19
//
//  Created by Rezo Joglidze on 9/9/20.
//  Copyright © 2020 Rezo Joglidze. All rights reserved.
//

import Foundation
import Viperit

enum AppModules: String, ViperitModule {
    case
        main,matchDetails
    
    var viewType: ViperitViewType {
        switch self {
        case
        .main,.matchDetails : return .storyboard
        }
    }
}