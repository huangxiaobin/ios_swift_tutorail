//
//  ViewController.swift
//  test28_uikit
//
//  Created by admin on 3/5/15.
//  Copyright (c) 2015 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var greenSquare : UIView?
    var redSquare : UIView?
    var animator : UIDynamicAnimator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var dimen = CGRectMake(30, 30, 50, 50)
        greenSquare = UIView(frame : dimen)
        greenSquare?.backgroundColor = UIColor.greenColor()
        
        
        dimen = CGRectMake(130, 30, 50, 50)
        redSquare = UIView(frame : dimen)
        redSquare?.backgroundColor = UIColor.redColor()
        
        self.view.addSubview(greenSquare!)
        self.view.addSubview(redSquare!)
        
        animator = UIDynamicAnimator(referenceView: self.view)
        
        let gravity = UIGravityBehavior(items: [greenSquare!, redSquare!])
        let direction = CGVectorMake(0.0, 1.0)
        gravity.gravityDirection = direction
        
        let boundry = UICollisionBehavior(items: [greenSquare!, redSquare!])
        boundry.translatesReferenceBoundsIntoBoundary = true
        
        let bounce = UIDynamicItemBehavior(items: [greenSquare!, redSquare!])
        bounce.elasticity = 0.5
        
        animator?.addBehavior(boundry)
        animator?.addBehavior(bounce)
        animator?.addBehavior(gravity)
    }



}

