//
//  ViewController.swift
//  CricketMaster
//
//  Created by user1 on 16/04/19.
//  Copyright © 2019 ARV. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tblview: UITableView!
    var arrMatchSchedule = [Match]()
    override func viewDidLoad() {
        super.viewDidLoad()
        ApiManager.manager.calender(completionHandler: { result , error in
            self.arrMatchSchedule = result
            DispatchQueue.main.async {
                 self.tblview.reloadData()
            }
           
        })
    }
}

extension ViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrMatchSchedule.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MatchTableViewCell", for: indexPath) as! MatchTableViewCell
        cell.configreCell(data:arrMatchSchedule[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
}
