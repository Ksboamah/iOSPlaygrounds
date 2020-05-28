//
//  FetchMusic.swift
//  Newmu
//
//  Created by Kwame  Boamah  on 5/28/20.
//  Copyright © 2020 Kwame  Boamah . All rights reserved.
//

import Foundation


extension String {
    func regexMatches(pattern: String) -> [String] {
        let re: NSRegularExpression
        do {
            re = try NSRegularExpression(pattern: pattern, options: [])
        } catch {
            return []
        }
        
        let matches = re.matches(in: self, options: [], range: NSRange(location: 0, length: self.utf16.count))
        var songList: Array<String> = []
        for match in matches {
            // range at index 0: full match
            // range at index 1: first capture group
            let substring = (self as NSString).substring(with: match.range(at: 1))
            songList.append(substring)
        }
        return songList
    }
    
}

struct FetchMusic {
    var contents = String()
    var contents2 = String()
    var songs = [Song]()
    var songOfTheDay: Song?
    
    init() {
        if let url = URL(string: "https://www.rollingstone.com/charts/songs/") {
            do {
                contents = try String(contentsOf: url)
                
            } catch {
                // contents could not be loaded
            }
        } else {
            // the URL was bad!
        }
        // Do any additional setup after loading the view.
        let titles = contents.regexMatches(pattern: "title\"><p>(.*?)</p>")
        let artists = contents.regexMatches(pattern: "c-chart__table--caption\">(.*?)<")
        
        for x in 0..<15 {
            songs.append(Song(title: titles[x], artist: artists[x]))
        }
        
        if let url2 = URL(string: "https://www.billboard.com/charts/hot-100"){
            do {
                contents2 = try String(contentsOf: url2)
                
            } catch {
                // contents could not be loaded
            }
        } else {
            // the URL was bad!
        }
        // Do any additional setup after loading the view.
        let titles2 = contents2.regexMatches(pattern: " text--truncate color--primary\">(.*?)</span>")
        let artists2 = contents2.regexMatches(pattern: "artist text--truncate color--secondary\">(.*?)</span>")
        
        for x in 16..<31 {
            songs.append(Song(title: titles2[x], artist: artists2[x]))
        }
        if songOfTheDay == nil {
            songOfTheDay = updateSong()
        }
        
        
    }
    
    mutating func updateSong() -> Song
    {
        songs.shuffle()
        let day = Calendar.current.component(.day, from: Date())
        return songs[day]
    }
}
