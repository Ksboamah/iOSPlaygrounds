//
//  Journal.swift
//  Journal
//
//  Created by Kwame  Boamah  on 4/2/20.
//  Copyright © 2020 Kwame  Boamah . All rights reserved.
//

import Foundation

struct Journal {
    
    var entries = [JournalEntry]()
    var count: Int {
        return entries.count
    }
    mutating func add(entry: JournalEntry) {
        entries.append(entry)
    }
    
    func entry(index: Int) -> JournalEntry? {
        if index >= 0 && index < entries.count {
            return entries[index]
        } else {
            return nil
        }
    }


}
