//
//  JournalEntryViewController.swift
//  Journal
//
//  Created by Kwame  Boamah  on 4/3/20.
//  Copyright © 2020 Kwame  Boamah . All rights reserved.
//

import UIKit

class JournalEntryViewController: UIViewController {

    @IBOutlet weak var journalEntryContents: UITextView!
    
    var journalEntry: JournalEntry?

    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let journalEntry = journalEntry {
                   journalEntryContents.text = journalEntry.contents
                   navigationItem.title = journalEntry.description
               }

        // Do any additional setup after loading the view.
    }
    


    // MARK: - Navigation


    

    

}
