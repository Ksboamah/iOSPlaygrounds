//
//  JournalEntry.swift
//  Journal
//
//  Created by Kwame  Boamah  on 4/2/20.
//  Copyright © 2020 Kwame  Boamah . All rights reserved.
//

import Foundation

struct JournalEntry: CustomStringConvertible {
    let date: Date
    let contents: String
    let dateFormatter = DateFormatter()
    
    var description: String {
    dateFormatter.dateStyle = .medium
    dateFormatter.timeStyle = .short
    return dateFormatter.string(from: date)
        
    }

}
