//
//  GameViewController.swift
//  GameOfLife
//
//  Created by Tamara Erlij on 31/10/19.
//  Copyright © 2019 Tamara Erlij. All rights reserved.
//

import UIKit
import QuartzCore
import SceneKit

class GameViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // retrieve the SCNView.
        let scnView = self.view as! SCNView
        let scene = GameScene()
    
        // set the scene to the view.
        scnView.scene = scene
        scnView.pointOfView?.position = SCNVector3Make(0, 0, 100)
        
        // MARK: Algumas propriedades da sceneView
        scnView.allowsCameraControl = true
        scnView.showsStatistics = true
        scnView.backgroundColor = UIColor.black
        
        // create and add a camera to the scene
        let cameraNode = SCNNode()
        cameraNode.camera = SCNCamera()
        scene.rootNode.addChildNode(cameraNode)
        
        // place the camera
        cameraNode.position = SCNVector3(x: 0, y: 0, z: 15)
        
        // create and add a light to the scene
        let lightNode = SCNNode()
        lightNode.light = SCNLight()
        lightNode.light!.type = .omni
        lightNode.position = SCNVector3(x: 0, y: 10, z: 10)
        scene.rootNode.addChildNode(lightNode)
        
        // create and add an ambient light to the scene
        let ambientLightNode = SCNNode()
        ambientLightNode.light = SCNLight()
        ambientLightNode.light!.type = .ambient
        ambientLightNode.light!.color = UIColor.darkGray
        scene.rootNode.addChildNode(ambientLightNode)
        
     // Reconhecimento do toque
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap(_:)))
             scnView.addGestureRecognizer(tapGesture)
     //   self.view.addGestureRecognizer(tapGesture)
    }
    
    @objc
    func handleTap(_ gestureRecognizer: UIGestureRecognizer) {
        // retrieve the SCNView
                let scnView = self.view as! SCNView
                // check what nodes are tapped
                let p = gestureRecognizer.location(in: scnView)
                let hitResults = scnView.hitTest(p, options: [:])
                // check that we clicked on at least one object
                if hitResults.count > 0 {
                    // retrieved the first clicked object
                    let result = hitResults[0]
                    print("toque")
                    // get its material
                    let material = result.node.geometry!.firstMaterial!
                    // highlight it
                    SCNTransaction.begin()
                    SCNTransaction.animationDuration = 0.5
                    
                    // on completion - unhighlight
                    SCNTransaction.completionBlock = {
                        SCNTransaction.begin()
                        SCNTransaction.animationDuration = 0.5
                        
                        material.emission.contents = UIColor.black
                        
                        SCNTransaction.commit()
                    }
                    
        //            material.emission.contents = UIColor.red
                    material.diffuse.contents = UIColor.red
                    
                    SCNTransaction.commit()
                }
            }
            
    
    override var shouldAutorotate: Bool {
        return true
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

}
