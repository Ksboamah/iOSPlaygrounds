//
//  Emoji.swift
//  Emoji Dictionary
//
//  Created by Kwame  Boamah  on 3/30/20.
//  Copyright © 2020 Kwame  Boamah . All rights reserved.
//

import Foundation
struct Emoji {
    var symbol: String
    var name: String
    var description: String
    var usage: String
    
    init(symbol: String, name: String, description: String, usage: String) {
        self.symbol = symbol
        self.name = name
        self.description = description
        self.usage = usage
    }
    
}
