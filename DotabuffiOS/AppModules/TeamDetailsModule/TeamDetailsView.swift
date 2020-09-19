
//
//  TeamDetailsView.swift
//  DotabuffiOS
//
//  Created by Rezo Joglidze on 9/19/20.
//Copyright © 2020 Rezo Joglidze. All rights reserved.
//

import UIKit
import Viperit

//MARK: TeamDetailsView Class
final class TeamDetailsView: HomeViewController {
    
    //MARK: Class variable
    private var teamDetails: [TeamDetailsItem] = []
    
    //MARK: IBOutlet
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: View life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavigaton()
        setupTableView()
    }
    
    //MARK: View Setup
    func setupNavigaton() {
        navigationItem.title = "გუნდის დეტალები"
    }
    
    func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "TeamDetailsCell", bundle: nil), forCellReuseIdentifier: "TeamDetailsCell")
        tableView.tableFooterView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: 1))
    }
}

//MARK: - TeamDetailsView API
extension TeamDetailsView: TeamDetailsViewApi {
    func upateView(teamDetails: [TeamDetailsItem]) {
        self.stopLoading()
        self.teamDetails = teamDetails
        tableView.reloadData()
    }
}

extension TeamDetailsView: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return teamDetails.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TeamDetailsCell", for: indexPath) as! TeamDetailsCell
        cell.configure(with : teamDetails[indexPath.row])
        return cell
    }
    
    
}

// MARK: - TeamDetailsView Viper Components API
private extension TeamDetailsView {
    var presenter: TeamDetailsPresenterApi {
        return _presenter as! TeamDetailsPresenterApi
    }
    var displayData: TeamDetailsDisplayData {
        return _displayData as! TeamDetailsDisplayData
    }
}
