//
//  ViewController.swift
//  test15_slider
//
//  Created by admin on 3/2/15.
//  Copyright (c) 2015 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var label1: UILabel!


    @IBAction func sliderChanged(sender: UISlider) {
        var sliderValue = lroundf(sender.value)
        
        label1.text = "\(sliderValue)"
    }
    
    
    @IBAction func segmentChanged(sender: UISegmentedControl) {
        
        if (sender.selectedSegmentIndex == 0) {
            label1.text = "first"
        } else {
            label1.text = "second"
        }
    }
}

