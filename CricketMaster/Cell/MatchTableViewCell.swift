//
//  MatchTableViewCell.swift
//  CricketMaster
//
//  Created by user1 on 16/04/19.
//  Copyright © 2019 ARV. All rights reserved.
//

import UIKit

class MatchTableViewCell: UITableViewCell {

    @IBOutlet weak var lblMatchType: UILabel!
    @IBOutlet weak var lblOpp1: UILabel!
    @IBOutlet weak var lblDate: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func configreCell(data:Match){
        let arr = data.name.components(separatedBy: ",")
        self.lblOpp1.text = arr[0]
        self.lblMatchType.text = arr[1]
        self.lblDate.text = data.date
    }
}
