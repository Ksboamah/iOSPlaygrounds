//
//  NewSongViewController.swift
//  Newmu
//
//  Created by Kwame  Boamah  on 5/8/20.
//  Copyright © 2020 Kwame  Boamah . All rights reserved.
//

import UIKit

class NewSongViewController: UIViewController {

    @IBOutlet weak var songName: UILabel!
    @IBOutlet weak var songArtist: UILabel!
    
    var songsToShow: [Song]?
    override func viewDidLoad() {
        super.viewDidLoad()
        let song1 = songsToShow![0]
        songName.text = song1.title
        songArtist.text = song1.artist
        
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
