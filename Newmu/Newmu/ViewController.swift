//
//  ViewController.swift
//  Newmu
//
//  Created by Kwame  Boamah  on 4/16/20.
//  Copyright © 2020 Kwame  Boamah . All rights reserved.
//

import UIKit

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



class ViewController: UIViewController {
    var contents = String()
    override func viewDidLoad() {
        super.viewDidLoad()

        
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
        var songs = [Song]()
        for x in 0..<15 {
            songs.append(Song(title: titles[x], artist: artists[x]))
        }
        print(songs[0])
        
                
            
        
    }
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */






