//
//  Url.swift
//  nexaasId
//
//  Created by Rodrigo Andrade on 29/10/18.
//  Copyright © 2018 Rodrigo Andrade. All rights reserved.
//

import Foundation

class Url {
    
    static let SANDBOX_URL = "https://sandbox.id.nexaas.com/"
    static let PROD_URL = "https://id.nexaas.com/"
    
    static func signin() -> String {
        return SANDBOX_URL + "oauth/token"
    }
    
    static func authorize() -> String {
        return SANDBOX_URL + "oauth/authorize"
    }
  
    static func getUser() -> String {
        return SANDBOX_URL + "api/v1/profile"
    }

}
