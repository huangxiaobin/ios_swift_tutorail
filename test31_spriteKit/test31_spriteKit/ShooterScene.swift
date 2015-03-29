//
//  ShooterScene.swift
//  test31_spriteKit
//
//  Created by admin on 3/6/15.
//  Copyright (c) 2015 admin. All rights reserved.
//

import UIKit
import SpriteKit

class ShooterScene: SKScene {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    var score = 0
    var enemyCount = 10
    var shooterAnimation = [SKTexture]()
    
    override func didMoveToView(view: SKView) {
        println("didMoveToView")
        self.initShooterScene()
    }

    func initShooterScene() {
        println("initShooterScene 1")
        let shooterAtlas = SKTextureAtlas(named: "shooter")
        
        shooterAnimation += [shooterAtlas.textureNamed("down.png")]
        shooterAnimation += [shooterAtlas.textureNamed("hello.png")]
        shooterAnimation += [shooterAtlas.textureNamed("no.png")]
        shooterAnimation += [shooterAtlas.textureNamed("ok.png")]
        shooterAnimation += [shooterAtlas.textureNamed("up.png")]
        shooterAnimation += [shooterAtlas.textureNamed("v.png")]
        
        let dropBombers = SKAction.sequence([SKAction.runBlock({
            self.createBomberNode()}),
            SKAction.waitForDuration(2.0)])
        
        self.runAction(SKAction.repeatAction(dropBombers, count: 10), completion:nil)
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        let shooterNode = childNodeWithName("shooterNode1")
        
        if shooterNode != nil {
            let animation = SKAction.animateWithTextures(shooterAnimation, timePerFrame: 0.2)
            println("touchesBegan 1")
            
            let shootBall = SKAction.runBlock({
                println("touchesBegan ")
                let ballNode = self.createBallNode()
                self.addChild(ballNode)
                ballNode.physicsBody?.applyImpulse(CGVectorMake(260, 0))
            })
            
            println("touchesBegan 3")
            let sequence = SKAction.sequence([animation, shootBall])
            shooterNode?.runAction(sequence)
        } else {
            println("can't find shooterNode")
        }
    }
    
    func createBallNode() -> SKSpriteNode {
        let shooterNode = childNodeWithName("shooterNode1")
        let shooterPosition  = shooterNode?.position
        let shooterWidth = shooterNode?.frame.size.width
        
        println("createBallNode")
        
        //if shooterNode != nil {
        //    println("createBallNode can't find shooterNode")
        //}
        
        let ball = SKSpriteNode(imageNamed : "ball.png")
        ball.position = CGPointMake(shooterPosition!.x + shooterWidth!/2, shooterPosition!.y)
        ball.name = "ball"
        ball.physicsBody = SKPhysicsBody(rectangleOfSize: ball.frame.size)
        ball.physicsBody?.usesPreciseCollisionDetection = true
        
        return ball
    }
    
    func createBomberNode() {
        //let shooterNode = childNodeWithName("shooterNode1")
        //let shooterPosition  = shooterNode?.position
        //let shooterWidth = shooterNode?.frame.size.width
        
        println("createBomberNode")
        
        let bomber = SKSpriteNode(imageNamed : "bomber.png")
        bomber.position = CGPointMake(self.size.width/4, self.size.height)
        bomber.name = "bomber"
        bomber.physicsBody = SKPhysicsBody(rectangleOfSize: bomber.frame.size)
        bomber.physicsBody?.usesPreciseCollisionDetection = true
        self.addChild(bomber)
        //return bomber
    }
}


