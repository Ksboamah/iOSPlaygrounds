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
        let images =  contents.regexMatches(pattern: "c-chart__table--cover\" src=(.*?)>")
        let endNumber = images.count
        var newImages = [String]()
        func images() -> [String]{
                for x in 0..<endNumber + 1{
                    let imageLink = images[x]
                    let start = imageLink.index(imageLink.startIndex, offsetBy: imageLink.count)
                    let end = imageLink.index(imageLink.endIndex, offsetBy: 1)
                    let range = start..<end
                    let mysubstring = imageLink[range]
                    newImages.append(String(mysubstring))
        }
            return newImages
    }
        for x in 0..<15 {
            songs.append(Song(title: titles[x], artist: artists[x], image: newImages[x]))
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
        let images2 = contents2.regexMatches(pattern: "chart-element__image flex--no-shrink\" style=\"background-image: url('(.*?)');\"></span>")
        
        for x in 16..<30 {
            songs.append(Song(title: titles2[x], artist: artists2[x], image: images2[x]))
        }
        
        func updateSong() -> Song
            {
                songs.shuffle()
                let day = Calendar.current.component(.day, from: Date())
                return songs[day]
                }
        
        if songOfTheDay == nil {
            songOfTheDay = updateSong()
        }
        
        
    }
    
  
}
