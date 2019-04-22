//
//  PlayerListTableViewCell.swift
//  CricketMaster
//
//  Created by user1 on 22/04/19.
//  Copyright © 2019 ARV. All rights reserved.
//

import UIKit

class PlayerListTableViewCell: UITableViewCell {
    @IBOutlet weak var lblname: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func configreCell(data:PlayerModel){
        self.lblname.text = data.name
    }
}
