//
//  DrawTest.swift
//  test23_drawing
//
//  Created by admin on 3/5/15.
//  Copyright (c) 2015 admin. All rights reserved.
//

import UIKit

class DrawTest: UIView {


    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
        let context = UIGraphicsGetCurrentContext()
        //CGContextSetLineWidth(context, 3.0)
        //CGContextSetStrokeColorWithColor(context, UIColor.purpleColor().CGColor)
        
        /* staight line
        CGContextMoveToPoint(context, 30, 30)
        CGContextAddLineToPoint(context, 200, 200)
        */
        
        /*
        CGContextMoveToPoint(context, 30, 30)
        CGContextAddLineToPoint(context, 30, 200)
        CGContextAddLineToPoint(context, 200, 200)
        CGContextAddLineToPoint(context, 200, 30)
        CGContextAddLineToPoint(context, 30, 30)
        */
        
        //reantangle
        //let rect = CGRectMake(30, 30, 100, 100)
        //CGContextAddRect(context, rect)
        
        //CGContextStrokePath(context)
        
        //CGContextSetFillColorWithColor(context, UIColor.redColor().CGColor)
        //CGContextFillPath(context)
        
        let image2 = UIImage(named: "logo1.png")
        let image1 = UIImage(named: "images.jpeg")
        
        let location = CGPointMake(30, 30)
        //image1?.drawAtPoint(location)
        
        let entireScreen = UIScreen.mainScreen().bounds
        image2?.drawInRect(entireScreen)
    }
}
