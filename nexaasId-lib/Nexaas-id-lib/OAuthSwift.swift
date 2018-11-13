//
//  OAuth2.swift
//  nexaasId
//
//  Created by Rodrigo Andrade on 05/11/18.
//  Copyright © 2018 Rodrigo Andrade. All rights reserved.
//

import Foundation
import OAuthSwift
import UIKit

public class OAuth2 {
    
    static func doLogin() {
        
        let oauthswift = OAuth2Swift(
            consumerKey:    "\(Authentication.CLIENT_ID)",
            consumerSecret: "\(Authentication.CLIENT_SECRET)",
            authorizeUrl:   "\(Url.authorize())",
            accessTokenUrl: "\(Url.signin())",
            responseType:   "code"
        )
        
        Authentication.oauthswift = oauthswift
        let state = generateState(withLength: 20)
        
        _ = oauthswift.authorize(
            withCallbackURL: URL(string: "com.nexaasId://callback/login")!,
            scope: "profile", state:state,
            success: { credential, response, parameters in
                
                Singleton.token(accessToken: credential.oauthToken)
                
                
                if let token = parameters["api_token"] as? String {
                    
                    Singleton.accessToken(accessToken: token)
                    
                }
                
        },
            failure: { error in
                
                print(error.localizedDescription)
                
        })
    }
}







