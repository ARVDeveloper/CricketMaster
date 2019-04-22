//
//  CurrentMatchModel.swift
//  CricketMaster
//
//  Created by user1 on 22/04/19.
//  Copyright © 2019 ARV. All rights reserved.
//

import UIKit

class CurrentMatchModel: NSObject {
   
    var team_1 : String!
    var team_2 : String!
    var date : String!
    var type : String!
    var squad : String!
    var toss_winner_team : String!
    var winner_team: String!
    var matchStarted: Bool!
    var unique_id: String!
    var score : String!
    
    init(dict:[String:Any]){
        
        if let value  = dict["unique_id"] as? String{
            self.unique_id = value
        }
        if let value  = dict["team-1"] as? String{
            self.team_1 = value
        }
        if let value  = dict["team-2"] as? String{
            self.team_2 = value
        }
        if let value  = dict["date"] as? String{
            self.date = value
        }
        if let value  = dict["type"] as? String{
            self.type = value
        }
        if let value  = dict["toss_winner_team"] as? String{
            self.toss_winner_team = value
        }
        if let value  = dict["winner_team"] as? String{
            self.winner_team = value
        }
        if let value  = dict["matchStarted"] as? Bool{
            self.matchStarted = value
        }
        if let value  = dict["score"] as? String{
            self.score = value
        }
        
    }
}
