//
//  User.swift
//  nexaasId
//
//  Created by Rodrigo Andrade on 30/10/18.
//  Copyright © 2018 Rodrigo Andrade. All rights reserved.
//

import CodableAlamofire
import Foundation

struct User: Codable {
    
    let id: String
    let first_name: String
    let last_name: String
    let full_name: String
    let nickname: String
    let email: String
    let birth: String
    let gender: String?
    let language: String?
    let picture: String?
    let timezone: String?
    let country: String?
    let city: String?
    let bio: String?
    
}
