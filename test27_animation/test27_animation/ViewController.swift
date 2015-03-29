//
//  ViewController.swift
//  test27_animation
//
//  Created by admin on 3/5/15.
//  Copyright (c) 2015 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button1: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        UIView.animateWithDuration(5.0, animations: {
            //self.button1.alpha = 0
            
            let grow = CGAffineTransformMakeScale(4, 4)
            let angle = CGFloat(90)
            let rotate = CGAffineTransformMakeRotation(angle)
            self.button1.transform = CGAffineTransformConcat(grow, rotate)
        })
    }

}

