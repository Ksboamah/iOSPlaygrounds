//
//  NewJournalEntryViewController.swift
//  Journal
//
//  Created by Kwame  Boamah  on 4/3/20.
//  Copyright © 2020 Kwame  Boamah . All rights reserved.
//

import UIKit

class NewJournalEntryViewController: UIViewController {

    
    @IBOutlet weak var journalEntryContents: UITextView!
    var journal: Journal?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func cancel(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)

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
