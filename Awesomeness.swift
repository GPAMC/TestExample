//
//  Awesomeness.swift
//  TestFramework
//
//  Created by Graham Connolly on 01/07/2016.
//  Copyright © 2016 Graham Connolly. All rights reserved.
//

import Foundation
import Alamofire
import AlamofireObjectMapper


public class Awesomeness {
    
    
    public class func thisIsAwesome(awesomeString: String) {
        print("\(awesomeString) is Awesome!!!")
    }
    
    public class func jsonResponse() {
        
        Alamofire.request(.GET, "http://blog.teamtreehouse.com/api/get_recent_summary/?count=20", parameters: ["foo": "bar"])
            .responseJSON { response in
                print(response.request)  // original URL request
                print(response.response) // URL response
                print(response.data)     // server data
                print(response.result)   // result of response serialization
                
                if let JSON = response.result.value {
                    print("JSON: \(JSON)")
                }
        }
    }
}