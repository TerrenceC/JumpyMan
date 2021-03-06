//
//  GameViewController.swift
//  Jumping
//
//  Created by Kevin Greer on 12/22/14.
//  Copyright (c) 2014 Kevin Greer. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Present MenuScene
        let scene = MenuScene(size: self.view.frame.size)
        let skView = self.view as SKView
        skView.showsFPS = true
        skView.showsNodeCount = true
        scene.scaleMode = .AspectFill
        skView.presentScene(scene as SKScene)
    }

    override func shouldAutorotate() -> Bool {
        return false
    }

    override func supportedInterfaceOrientations() -> Int {
        if UIDevice.currentDevice().userInterfaceIdiom == .Phone {
            return Int(UIInterfaceOrientationMask.AllButUpsideDown.rawValue)
        } else {
            return Int(UIInterfaceOrientationMask.All.rawValue)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}
