//
//  User.swift
//  La Colectiva
//
//  Created by Vohra, Nikant on 9/24/16.
//  Copyright © 2016 Vohra, Nikant. All rights reserved.
//

import Foundation

class User {
    
    
    let name : String
    let email : String
    let password : String
    
    init(name : String, email : String, password : String) {
        self.name = name
        self.email = email
        self.password = password
    }
}
