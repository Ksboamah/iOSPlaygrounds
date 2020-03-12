//
//  ViewController.swift
//  Login
//
//  Created by Kwame on 3/2/20.
//  Copyright © 2020 Kwame. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Username: UITextField!
    
    @IBOutlet weak var forgotUsernameButton: UIButton!
    
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {return}
        
        if sender == forgotPasswordButton{
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUsernameButton {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = Username.text        }
    }
    @IBAction func forgotUsernameButton(_ sender: Any) {
        performSegue(withIdentifier: "secondSegue", sender: forgotUsernameButton)
    }
    
    @IBAction func forgotPasswordButton(_ sender: Any) {
        performSegue(withIdentifier: "secondSegue", sender: forgotPasswordButton)
    }
}

