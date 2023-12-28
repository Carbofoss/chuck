//
//  Model.swift
//  ChuckApp
//
//  Created by MacBook on 01.06.2022.
//http://api.icndb.com/jokes/random

import UIKit

class Model: NSObject {
    func loadJoke() -> String {
        var returnJoke: String = ""
        
        let url = NSURL(string: "http://api.icndb.com/jokes/random")!
        
        let data = NSData(contentsOf: url as URL)
        
        do {
            let dict = try JSONSerialization.jsonObject(with: data! as Data, options: .allowFragments) as!  NSDictionary
           
            if dict.object(forKey: "type") as! String == "success" {
                returnJoke = (dict.object(forKey: "value") as! NSDictionary).object(forKey: "joke") as! String
            } else {
                returnJoke = "Ошибка при получении json"
            }
            
            print(dict)
            
        } catch {
            returnJoke = "Ошибка при распаковке json: \(error)"
        }
       
        
        return returnJoke.replacingOccurrences(of: "&quot;", with: "\"")

}
}
