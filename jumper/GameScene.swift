//
//  GameScene.swift
//  jumper
//
//  Created by CHRISTIAN BOURQUIN on 2/2/23.
//

import SpriteKit
import GameplayKit
class GameScene: SKScene, SKPhysicsContactDelegate{
    var Ship: SKSpriteNode!
   // var winGround: SKSpriteNode!
  //  var scoreTracker:SKLabelNode!
    let cam = SKCameraNode()
    var score = 0
    var test = 0
    override func didMove(to view: SKView) {
        
        physicsWorld.contactDelegate = self
        //sets screen orientation to the left
        let value = UIInterfaceOrientation.landscapeLeft.rawValue
        UIDevice.current.setValue(value, forKey: "orientation")
        
        Ship = self.childNode(withName: "Ship") as? SKSpriteNode
        //winGround = self.childNode(withName: "winGround") as? SKSpriteNode
      //  scoreTracker = self.childNode(withName: "ScoreTracker") as? SKLabelNode
        self.camera = cam
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
        
        cam.position.x = Ship.position.x
        cam.position.y = Ship.position.y
        //scoreTracker.position.x = cam.position.x
    }
    
    func didBegin(_ contact: SKPhysicsContact) {
     //   scoreTracker.text = "score: \(score)"
        if contact.bodyA.node?.name == "coin1" && score <= 0{
            score += 1
            print("\(score)")
        }
        else if contact.bodyA.node?.name == "coin1" && score <= 0 {
            score += 1
            print("\(score)")

        }
        if contact.bodyA.node?.name == "coin2" && score <= 1{
            score += 1
            print("\(score)")

        }
        else if contact.bodyA.node?.name == "coin2" && score <= 1{
            score += 1
            print("\(score)")

        }
        if contact.bodyA.node?.name == "coin3" && score <= 2{
            score += 1
            print("\(score)")

        }
        else if contact.bodyA.node?.name == "coin3" && score <= 2{
            score += 1
            print("\(score)")

        }
        if contact.bodyA.node?.name == "coin4" && score <= 3{
            score += 1
            print("\(score)")

        }
        else if contact.bodyA.node?.name == "coin4" && score <= 3{
            score += 1
            print("\(score)")

        }
        if contact.bodyA.node?.name == "winGround"{
            if score >= 4{
                print("you won!!!!")
            }
            else{
                print("you lost")
            }
        }
       else if contact.bodyB.node?.name == "winGround"{
           if score >= 4{
               print("you won!!!!")
           }
           else{
               print("you lost")
           }
        }
       else if contact.bodyA.node?.name == "ship"{
           if score >= 4{
               print("you won!!!!")
           }
           else{
               print("you lost")
           }
        }
     else if contact.bodyB.node?.name == "ship"{
         if score >= 4{
             print("you won!!!!")
         }
         else{
             print("you lost")
         }
        }
    }
    
    func jump(){
        Ship.physicsBody?.velocity = CGVector(dx: 500, dy: 500)
    }
    /*
    override func keyDown(theEvent: NSEvent) {
        let keyCode = theEvent.keyCode
        if(keyCode == 123)//Left
        {
            
        }
        if(keyCode == 124)//Right
        {
            
        }
        if(keyCode == 125)//Down
        {
            
        }
        if(keyCode == 126)//Up
        {
            
        }
*/
}
