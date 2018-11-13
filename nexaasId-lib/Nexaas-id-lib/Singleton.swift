//
//  Singleton.swift
//  nexaasId
//
//  Created by Rodrigo Andrade on 05/11/18.
//  Copyright © 2018 Rodrigo Andrade. All rights reserved.
//

import Foundation

@objc class Singleton: NSObject {
    
    private static let ACCESS_TOKEN = "api_token"
    private static let TOKEN = "access_token"
    private static let USER = "user"
    
    @objc static func accessToken() -> String? {
        let defaults = UserDefaults.standard
        return defaults.string(forKey: ACCESS_TOKEN)
    }
    
    @objc static func accessToken(accessToken: String) {
        let defaults = UserDefaults.standard
        defaults.set(accessToken, forKey: ACCESS_TOKEN)
    }
    
    @objc static func token() -> String? {
        let defaults = UserDefaults.standard
        return defaults.string(forKey: TOKEN)
    }
    
    @objc static func token(accessToken: String) {
        let defaults = UserDefaults.standard
        defaults.set(accessToken, forKey: TOKEN)
    }
    
    @objc static func clear() {
        let defaults = UserDefaults.standard
        defaults.removeObject(forKey: ACCESS_TOKEN)
        defaults.removeObject(forKey: USER)
        defaults.removeObject(forKey: TOKEN)
        
    }
    
}

