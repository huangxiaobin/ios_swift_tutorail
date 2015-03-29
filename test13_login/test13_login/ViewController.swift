//
//  ViewController.swift
//  test13_login
//
//  Created by admin on 2/28/15.
//  Copyright (c) 2015 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var email: UITextField!

    @IBOutlet weak var password: UITextField!
    
    
    @IBAction func login(sender: UIButton) {
        self.email.resignFirstResponder()
        self.password.resignFirstResponder()
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }

}

