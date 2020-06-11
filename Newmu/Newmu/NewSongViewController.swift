//
//  NewSongViewController.swift
//  Newmu
//
//  Created by Kwame  Boamah  on 5/8/20.
//  Copyright © 2020 Kwame  Boamah . All rights reserved.
//

import UIKit

extension UIImageView {
    func setImage(from url: String) {
        guard let imageURL = URL(string: url) else { return }

            // just not to cause a deadlock in UI!
        DispatchQueue.global().async {
            guard let imageData = try? Data(contentsOf: imageURL) else { return }

            let image = UIImage(data: imageData)
            DispatchQueue.main.async {
                self.image = image
            }
        }
    }
}
    
class NewSongViewController: UIViewController {

    @IBOutlet weak var songName: UILabel!
    @IBOutlet weak var songImage: UIImageView!
    @IBOutlet weak var songArtist: UILabel!
    
    var songToShow: Song?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        songName.text = songToShow?.title
        songArtist.text = songToShow?.artist
        songImage.setImage(from: songToShow!.image)


        /*NSObject.
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
}
