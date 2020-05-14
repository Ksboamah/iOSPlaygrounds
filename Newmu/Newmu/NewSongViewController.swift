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
        updateSong()
      
        // Do any additional setup after loading the view.
    }
   
    func updateSong()
          {
              let day = Calendar.current.component(.day, from: Date())
              let songOfTheDay = songsToShow![day - 1]

              songName.text = songOfTheDay.title
              songArtist.text = songOfTheDay.artist
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
