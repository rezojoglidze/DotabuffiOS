//
//  MatchDetailsView.swift
//  DotabuffiOS
//
//  Created by Rezo Joglidze on 9/18/20.
//Copyright © 2020 Rezo Joglidze. All rights reserved.
//

import UIKit
import Viperit

//MARK: MatchDetailsView Class
final class MatchDetailsView: UserInterface {
    
    //MARK: Class variable
    
    //MARK: IBOutlet
    @IBOutlet weak var winnerTeamImg: UIImageView!
    @IBOutlet weak var winnerTeamLbl: UILabel!
    @IBOutlet weak var radiantBtn: UIButton!
    @IBOutlet weak var direBtn: UIButton!
    @IBOutlet weak var radiantScoreLbl: UILabel!
    @IBOutlet weak var matchDurationLbl: UILabel!
    @IBOutlet weak var direScoreLbl: UILabel!
    @IBOutlet weak var gameModeLbl: UILabel!
    @IBOutlet weak var firstBloodTimeLbl: UILabel!
    
    //MARK: View life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavigaton()
    }
    
    //MARK: View Setup
    func setupNavigaton() {
        navigationItem.title = "დეტალები"
    }
}

//MARK: - MatchDetailsView API
extension MatchDetailsView: MatchDetailsViewApi {
    func updateView(matchDetails: MatchDetails) {
        print(matchDetails)
    }
}

// MARK: - MatchDetailsView Viper Components API
private extension MatchDetailsView {
    var presenter: MatchDetailsPresenterApi {
        return _presenter as! MatchDetailsPresenterApi
    }
    var displayData: MatchDetailsDisplayData {
        return _displayData as! MatchDetailsDisplayData
    }
}
