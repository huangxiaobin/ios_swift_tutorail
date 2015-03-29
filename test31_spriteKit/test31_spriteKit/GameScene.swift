//
//  GameScene.swift
//  test31_spriteKit
//
//  Created by admin on 3/6/15.
//  Copyright (c) 2015 admin. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */

    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        /* Called when a touch begins */
        let introLabel = childNodeWithName("introLabel")
        
        if (introLabel != nil) {
            let fadeOut = SKAction.fadeOutWithDuration(1.5)
            
            introLabel?.runAction(fadeOut, completion:{
                let doors = SKTransition.doorwayWithDuration(2)
                //let shooterScene = ShooterScene(fileNamed: "test")
                let shooterScene = ShooterScene(fileNamed: "ShooterScene")
                self.view?.presentScene(shooterScene, transition: doors)
            })
        } else {
            println("can't find label!")
        }

    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
        
    }
}
