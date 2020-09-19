//
//  MatchDetails.swift
//  DotabuffiOS
//
//  Created by Rezo Joglidze on 9/18/20.
//  Copyright © 2020 Rezo Joglidze. All rights reserved.
//

import Foundation

struct MatchDetails: Codable {
    let duration: Int
    let gameMode: MatchMode
    let radiantWin: Bool
    let firstBloodTime: Int
    let radiantScore: Int
    let direScore: Int
    let direTeam: Team?
    let radiantTeam: Team?

    enum CodingKeys: String, CodingKey {
        case gameMode = "game_mode"
        case radiantWin = "radiant_win"
        case firstBloodTime = "first_blood_time"
        case radiantScore = "radiant_score"
        case direScore = "dire1_score"
        case direTeam = "dire_team"
        case radiantTeam = "radiant_team"
        case duration
    }
}

struct Team: Codable {
    let teamId: Int
    let name: String
    let tag: String
    let logoUrl: String?
    
    enum CodingKeys: String, CodingKey {
        case teamId = "team_id"
        case logoUrl = "logo_url"
        case name, tag
    }
}


enum MatchMode: Int,Codable {
    case mode0 = 0
    case mode1, mode2,mode3,mode4,mode5,mode6,mode7,mode8,mode9,mode10,mode11,mode12,mode13,mode14,mode15,mode16,mode17,mode18,mode19,mode20,mode21,mode22,mode23,mode24
    
    
    func getGameModeName() -> String {
        switch self {
        case .mode0:
            return "game_mode_unknown"
        case .mode1:
            return "game_mode_all_pick"
        case .mode2:
            return "game_mode_captains_mode"
        case .mode3:
            return "game_mode_random_draft"
        case .mode4:
            return "game_mode_single_draft"
        case .mode5:
            return "game_mode_all_random"
        case .mode6:
            return "game_mode_intro"
        case .mode7:
            return "game_mode_diretide"
        case .mode8:
            return "game_mode_reverse_captains_mode"
        case .mode9:
            return "game_mode_greeviling"
        case .mode10:
            return "game_mode_tutorial"
        case .mode11:
            return "game_mode_mid_only"
        case .mode12:
            return "game_mode_least_played"
        case .mode13:
            return "game_mode_limited_heroes"
        case .mode14:
            return "game_mode_compendium_matchmaking"
        case .mode15:
            return "game_mode_custom"
        case .mode16:
            return "game_mode_captains_draft"
        case .mode17:
            return "game_mode_balanced_draft"
        case .mode18:
            return "game_mode_ability_draft"
        case .mode19:
            return "game_mode_event"
        case .mode20:
            return "game_mode_all_random_death_match"
        case .mode21:
            return "game_mode_1v1_mid"
        case .mode22:
            return "game_mode_all_draft"
        case .mode23:
            return "game_mode_turbo"
        case .mode24:
            return "game_mode_mutation"
        }
    }
}

