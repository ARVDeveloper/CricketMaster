//
//  Match.swift
//  CricketMaster
//
//  Created by user1 on 16/04/19.
//  Copyright © 2019 ARV. All rights reserved.
//

import UIKit

class Match: NSObject {
    var name : String!
    var date : String!
    init(dict:[String:Any]){
        if let value  = dict["name"] as? String{
            self.name = value
        }
        if let value  = dict["date"] as? String{
            self.date = value
        }
        
    }
}
