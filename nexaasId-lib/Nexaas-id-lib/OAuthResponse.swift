//
//  OAuthResponse.swift
//  Rexpense
//
//  Created by Rodrigo Andrade on 20/11/18.
//  Copyright © 2018 Myfreecomm. All rights reserved.
//

import Foundation

struct OAuthResponse: Codable {
    
    var access_token: String
    var refresh_token: String
    var api_token: String
    
}
