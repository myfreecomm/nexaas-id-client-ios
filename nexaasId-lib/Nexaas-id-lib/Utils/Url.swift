//
//  Url.swift
//  Rexpense
//
//  Created by Rodrigo Andrade on 20/06/2018.
//  Copyright © 2018 Myfreecomm. All rights reserved.
//

import Foundation
import OAuthSwift



@objc class Url: NSObject {
    
    static let BASE_PASSAPORTEWEB_URL = "https://app.passaporteweb.com.br"
    static let BASE_PASSAPORTEWEB_SANDBOX_URL = "https://sandbox.app.passaporteweb.com.br"
    static let BASE_REXPENSE_URL = "https://app.rexpense.com/api/v1"
    static let BASE_REXPENSE_SANDBOX_URL = "https://sandbox.rexpense.com/api/v1"
    
  
    
    static let SANDBOX_URL = "https://sandbox.id.nexaas.com/"
    static let PROD_URL = "https://id.nexaas.com/"
    static let CLIENT_ID = "5USYUVZHRFD7ZLXZA3BNYGW6HY"
    static let CLIENT_SECRET = "ZFZAP5WR7VD6XJDVS7JKMYVZ7U"
    
    
    static let GRANT_TYPE_CREATE = "client_credentials"
    static let GRANT_TYPE_CREDENTIALS = "authorization_code"
    
    
    @objc static func signin() -> String {
        return SANDBOX_URL + "oauth/token"
    }
    
    @objc static func authorize() -> String {
        return SANDBOX_URL + "oauth/authorize"
    }
    
    @objc static func getUser() -> String {
        return SANDBOX_URL + "api/v1/profile"
    }
    
    @objc static func signOut() -> String {
        return SANDBOX_URL + "applications/sign_out"
    }
    
    
    @objc static func handle(url: URL) {
        OAuthSwift.handle(url: url)
    }
    
}
