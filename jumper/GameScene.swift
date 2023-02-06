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
        //scoreTracker.position.x = cam.position.x
    }
    
    func didBegin(_ contact: SKPhysicsContact) {
        print("collision")
     //   scoreTracker.text = "score: \(score)"
        if contact.bodyA.node?.name == "winGround"{
            contact.bodyA.node?.physicsBody?.friction = 1000
             print("you won!!!!")
        }
       else if contact.bodyB.node?.name == "winGround"{
            contact.bodyB.node?.physicsBody?.friction = 1000
            print("you won!!!!")

        }
       else if contact.bodyA.node?.name == "ship"{
            contact.bodyA.node?.physicsBody?.friction = 1000
             print("you won!!!!")
        }
     else if contact.bodyB.node?.name == "ship"{
            contact.bodyB.node?.physicsBody?.friction = 1000
            print("you won!!!!")
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
