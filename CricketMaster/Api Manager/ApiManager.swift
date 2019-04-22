//
//  ApiManager.swift
//  CricketMaster
//
//  Created by user1 on 16/04/19.
//  Copyright © 2019 ARV. All rights reserved.
//

import UIKit

class ApiManager: NSObject {
   static let manager = ApiManager()
    func getmatches( completionHandler: @escaping (_ result: [CurrentMatchModel], _ error: String) -> Void){
        let request = NSMutableURLRequest(url: NSURL(string: "https://cricapi.com/api/matches?apikey=SUhJxj8e0OgHTduIBU9mQyDCFWm2")! as URL,
                                          cachePolicy: .useProtocolCachePolicy,
                                          timeoutInterval: 10.0)
        request.httpMethod = "GET"
       
        
        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
            if (error != nil) {
                
            } else {
                guard let data = data, error == nil else { return }
                var matcharr = [CurrentMatchModel]()
                do {
                    let json = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as! [String:Any]
                    let posts = json["matches"] as? [[String: Any]] ?? []
                    print(posts)
                    for item in posts{
                        matcharr.append(CurrentMatchModel.init(dict: item))
                        
                    }
                    
                } catch let error as NSError {
                    print(error)
                }
                completionHandler(matcharr, "")
                
                
                
            }
        })
        
        dataTask.resume()
    }
   
    func score(unique_id:String ,completionHandler: @escaping (_ result: CurrentMatchModel, _ error: String) -> Void){
        let request = NSMutableURLRequest(url: NSURL(string: "https://cricapi.com/api/cricketScore?apikey=SUhJxj8e0OgHTduIBU9mQyDCFWm2&unique_id=\(unique_id)")! as URL,
                                          cachePolicy: .useProtocolCachePolicy,
                                          timeoutInterval: 10.0)
        request.httpMethod = "GET"
        
        
        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
            if (error != nil) {
                
            } else {
                guard let data = data, error == nil else { return }
          
                do {
                    let json = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as! [String:Any]
                    completionHandler(CurrentMatchModel.init(dict: json), "")
                } catch let error as NSError {
                    print(error)
                }
             }
        })
        
        dataTask.resume()
       
    }
    func calender( completionHandler: @escaping (_ result: [Match], _ error: String) -> Void){
      
        let request = NSMutableURLRequest(url: NSURL(string: "https://cricapi.com/api/matchCalendar?apikey=SUhJxj8e0OgHTduIBU9mQyDCFWm2")! as URL,
                                          cachePolicy: .useProtocolCachePolicy,
                                          timeoutInterval: 10.0)
        request.httpMethod = "GET"
        
        
        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
            if (error != nil) {
                
            } else {
                guard let data = data, error == nil else { return }
                var matcharr = [Match]()
                do {
                    let json = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as! [String:Any]
                    let posts = json["data"] as? [[String: Any]] ?? []
                    print(posts)
                    for item in posts{
                        matcharr.append(Match.init(dict: item))
                        
                    }
                    
                } catch let error as NSError {
                    print(error)
                }
                completionHandler(matcharr, "")
             }
        })
        
        dataTask.resume()
    }
    func player( name : String,completionHandler: @escaping (_ result: [PlayerModel], _ error: String) -> Void){
        //
        let request = NSMutableURLRequest(url: NSURL(string: "https://cricapi.com/api/playerFinder?apikey=SUhJxj8e0OgHTduIBU9mQyDCFWm2&name=name")! as URL,
                                          cachePolicy: .useProtocolCachePolicy,
                                          timeoutInterval: 10.0)
        request.httpMethod = "GET"
        
        
        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
            if (error != nil) {
                
            } else {
                guard let data = data, error == nil else { return }
                var matcharr = [PlayerModel]()
                do {
                    let json = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as! [String:Any]
                    let posts = json["data"] as? [[String: Any]] ?? []
                    print(posts)
                    for item in posts{
                        matcharr.append(PlayerModel.init(dict: item))
                        
                    }
                } catch let error as NSError {
                    print(error)
                }
                completionHandler(matcharr, "")
            }
        })
        
        dataTask.resume()
    }
    func playerInfo(pid : String,completionHandler: @escaping (_ result: PlayerDetailsModel, _ error: String) -> Void){
       
        let request = NSMutableURLRequest(url: NSURL(string: "https://cricapi.com/api/playerStats?apikey=SUhJxj8e0OgHTduIBU9mQyDCFWm2&pid=\(pid)")! as URL,
                                          cachePolicy: .useProtocolCachePolicy,
                                          timeoutInterval: 10.0)
        request.httpMethod = "GET"
        
        
        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
            if (error != nil) {
                
            } else {
                guard let data = data, error == nil else { return }
             
                do {
                    let json = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as! [String:Any]
                    completionHandler(PlayerDetailsModel.init(dict:json), "")
                } catch let error as NSError {
                    print(error)
                }
            
            }
        })
        
        dataTask.resume()
    }
    func getOldMatchData(){
        
        let request = NSMutableURLRequest(url: NSURL(string: "https://cricapi.com/api/cricket?apikey=SUhJxj8e0OgHTduIBU9mQyDCFWm2")! as URL,
                                          cachePolicy: .useProtocolCachePolicy,
                                          timeoutInterval: 10.0)
        request.httpMethod = "GET"
        
        
        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
            if (error != nil) {
                
            } else {
                
                
                
                
                
            }
        })
        
        dataTask.resume()
        
    }
}
