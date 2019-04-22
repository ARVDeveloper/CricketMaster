//
//  CurrentMatchListViewController.swift
//  CricketMaster
//
//  Created by user1 on 16/04/19.
//  Copyright © 2019 ARV. All rights reserved.
//

import UIKit

class CurrentMatchListViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var arrMatch = [CurrentMatchModel]()
    override func viewDidLoad() {
        super.viewDidLoad()
        ApiManager.manager.getmatches(completionHandler: { result , error in
           self.arrMatch = result
           self.tableView.reloadData()
        })
    }
}
extension CurrentMatchListViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrMatch.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CurrentMatchTableViewCell", for: indexPath) as! CurrentMatchTableViewCell
        cell.configreCell(data:arrMatch[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
}
