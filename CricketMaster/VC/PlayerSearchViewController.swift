//
//  PlayerSearchViewController.swift
//  CricketMaster
//
//  Created by user1 on 22/04/19.
//  Copyright © 2019 ARV. All rights reserved.
//

import UIKit

class PlayerSearchViewController: UIViewController {
    @IBOutlet weak var searchBar: UISearchBar!
    var arrPlayer = [PlayerModel]()
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        ApiManager.manager.player(name: searchBar.text!, completionHandler: { result , error in
            self.arrPlayer = result
            self.tableView.reloadData()
        })
     }
}
extension PlayerSearchViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrPlayer.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlayerListTableViewCell", for: indexPath) as! PlayerListTableViewCell
        cell.configreCell(data:arrPlayer[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    
}
