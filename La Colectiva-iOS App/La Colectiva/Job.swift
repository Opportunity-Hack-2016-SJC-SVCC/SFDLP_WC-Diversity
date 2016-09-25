//
//  Job.swift
//  La Colectiva
//
//  Created by Vohra, Nikant on 9/24/16.
//  Copyright © 2016 Vohra, Nikant. All rights reserved.
//

import Foundation


class Job  {
    
    let user : User
    let name : String
    
    init(name : String, user : User) {
        self.name = name
        self.user = user
    }
}
