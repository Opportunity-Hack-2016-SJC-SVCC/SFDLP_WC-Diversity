//
//  Event.swift
//  La Colectiva
//
//  Created by Vohra, Nikant on 9/24/16.
//  Copyright © 2016 Vohra, Nikant. All rights reserved.
//

import Foundation

class Event {
    
    let name : String
    let detail : String
    let startDate : Date
    let endDate : Date
    
    init(name : String, detail : String, startDate : Date, endDate : Date) {
        self.name = name
        self.detail = detail
        self.startDate = startDate
        self.endDate = endDate
    }
    
}
