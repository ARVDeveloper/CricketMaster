//
//  PlayerModel.swift
//  CricketMaster
//
//  Created by user1 on 22/04/19.
//  Copyright © 2019 ARV. All rights reserved.
//

import UIKit

class PlayerModel: NSObject {

    var fullName: String!
    var name : String!
    var pid : String!
    
    init(dict:[String:Any]){
       
        if let value  = dict["fullName"] as? String{
            self.fullName = value
        }
        if let value  = dict["name"] as? String{
            self.name = value
        }
        if let value  = dict["pid"] as? String{
            self.pid = value
        }
    }
    
}
