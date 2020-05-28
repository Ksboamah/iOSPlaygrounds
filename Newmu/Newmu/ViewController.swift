//
//  ViewController.swift
//  Newmu
//
//  Created by Kwame  Boamah  on 4/16/20.
//  Copyright © 2020 Kwame  Boamah . All rights reserved.
//

import UIKit




class ViewController: UIViewController {
    
    @IBOutlet weak var newSongButton: UIButton!
 
    
   
    var newSong: Song?
    override func viewDidLoad() {
        super.viewDidLoad()
        let getMusic = FetchMusic()
        newSong = getMusic.songOfTheDay
  

     
                
            
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as? NewSongViewController
        destinationVC?.songToShow = newSong
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






