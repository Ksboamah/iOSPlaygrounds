//
//  ViewController.swift
//  Temperature Converter
//
//  Created by Kwame on 2/11/20.
//  Copyright © 2020 Kwame. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var converter: UITextField!
    @IBOutlet weak var celcius: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    
    @IBAction func Calculate(_ sender: Any) {
        let tempF = Double(converter.text!)
        
        let tempC = 5/9 * (tempF! - 32)
         celcius.text = String(tempC)
    }
   
}

