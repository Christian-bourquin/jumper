//
//  GameViewController.swift
//  jumper
//
//  Created by CHRISTIAN BOURQUIN on 2/2/23.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {
    var play: GameScene!

    override func viewDidLoad() {
        super.viewDidLoad()
       // LabelOutlet.isHidden = true
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
            if let scene = SKScene(fileNamed: "GameScene") {
                // Set the scale mode to scale to fit the window
                scene.scaleMode = .aspectFill
                play = scene as? GameScene
                // Present the scene
                view.presentScene(scene)
            }
            
            view.ignoresSiblingOrder = true
            
            view.showsFPS = true
            view.showsNodeCount = true
        }
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .landscapeRight
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
    
   
    @IBAction func jumpAction(_ sender: Any) {
        play.jump()
        
    }
    
    @IBAction func rightAction(_ sender: Any) {
        play.right()
        
    }
    
    
    @IBAction func leftAction(_ sender: Any) {
        play.left()
        
    }
    
    
}
