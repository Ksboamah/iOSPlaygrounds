//
//  ViewController.swift
//  TrafficLights
//
//  Created by Kwame on 2/13/20.
//  Copyright © 2020 Kwame. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var name: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func returnToFirstScreen(unwindSegue: UIStoryboardSegue){
        }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = name.text
    }
    
}


