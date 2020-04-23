//
//  ViewController.swift
//  Newmu
//
//  Created by Kwame  Boamah  on 4/16/20.
//  Copyright © 2020 Kwame  Boamah . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        var songList: [String] = []
        
        if let url = URL(string: "https://www.rollingstone.com/charts/songs/") {
            do {
                let contents = try String(contentsOf: url)
                let input = contents
                let regex = try NSRegularExpression(pattern: "c-chart__table--title\">\(String())<p><" , options: NSRegularExpression.Options.caseInsensitive)
                let matches = regex.matches(in: input, options: [], range: NSRange(location: 0, length: input.utf16.count))
                print(matches)
                
            } catch {
                // contents could not be loaded
            }
        } else {
            // the URL was bad!
        }
        // Do any additional setup after loading the view.
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
