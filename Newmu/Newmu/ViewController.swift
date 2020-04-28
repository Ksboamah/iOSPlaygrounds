//
//  ViewController.swift
//  Newmu
//
//  Created by Kwame  Boamah  on 4/16/20.
//  Copyright © 2020 Kwame  Boamah . All rights reserved.
//

import UIKit

extension UIViewController {
    func regexMatches(pattern: String) -> Array<String> {
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

    override func viewDidLoad() {
        super.viewDidLoad()

        
        if let url = URL(string: "https://www.rollingstone.com/charts/songs/") {
            do {
                let contents = try String(contentsOf: url)
                print(contents)
                
            } catch {
                // contents could not be loaded
            }
        } else {
            // the URL was bad!
        }
        // Do any additional setup after loading the view.
    }
    
    override func regexMatches(pattern: "title\"><p>Life is Good</p>") -> Array<String> {
        <#code#>
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}




