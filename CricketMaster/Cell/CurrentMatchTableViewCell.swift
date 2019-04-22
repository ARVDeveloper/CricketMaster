//
//  CurrentMatchTableViewCell.swift
//  CricketMaster
//
//  Created by user1 on 22/04/19.
//  Copyright © 2019 ARV. All rights reserved.
//

import UIKit

class CurrentMatchTableViewCell: UITableViewCell {
    @IBOutlet weak var lblType: UILabel!
    @IBOutlet weak var lblResult: UILabel!
    @IBOutlet weak var lblTeam2: UILabel!
    @IBOutlet weak var lblTeam1: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func configreCell(data:CurrentMatchModel){
       self.lblType.text = data.type
       self.lblTeam1.text = data.team_1
       self.lblTeam2.text = data.team_2
    }
}
