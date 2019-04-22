//
//  PlayerDetailsModel.swift
//  CricketMaster
//
//  Created by user1 on 22/04/19.
//  Copyright © 2019 ARV. All rights reserved.
//

import UIKit

class PlayerDetailsModel: NSObject {
    
    var fullName: String!
    var name : String!
    var profile : String!
    var imageURL : String!
    var battingStyle: String!
    var bowlingStyle: String!
    
    init(dict:[String:Any]){
        
        if let value  = dict["fullName"] as? String{
            self.fullName = value
        }
        if let value  = dict["name"] as? String{
            self.name = value
        }
        if let value  = dict["profile"] as? String{
            self.profile = value
        }
        if let value  = dict["imageURL"] as? String{
            self.imageURL = value
        }
        if let value  = dict["battingStyle"] as? String{
            self.battingStyle = value
        }
        if let value  = dict["bowlingStyle"] as? String{
            self.bowlingStyle = value
        }
    }
}
