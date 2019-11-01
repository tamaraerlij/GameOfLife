//
//  GameScene.swift
//  GameOfLife
//
//  Created by Tamara Erlij on 01/11/19.
//  Copyright © 2019 Tamara Erlij. All rights reserved.
//

import Foundation
import SceneKit

class GameScene: SCNScene {
    // Código: https://stackoverflow.com/questions/41265653/how-can-i-create-a-3d-grid-in-scenekit
    private let aliveColor = UIColor.white.withAlphaComponent(0.75)
 override init() {
            super.init()
            let offset: Int = 8
            
            for i in 0..<8 {
                for j in 0..<8 {
                    let geometry = SCNBox(width: 0.7, height: 0.7, length: 0.7, chamferRadius: 0.005)
                    let boxNode = SCNNode(geometry: geometry)
                    
                    geometry.firstMaterial?.diffuse.contents = UIColor.red
                     geometry.firstMaterial?.specular.contents = UIColor.red
                     geometry.firstMaterial?.emission.contents = UIColor.red

// If you want to assign a new material to each geometry, you need to create a copy of the geometry and assign a new material to that geometry copy.
                   let boxCopy = boxNode.copy() as! SCNNode
    //Setar a posicao da caixa
                    boxNode.position.x = Float(i-offset)
                    boxNode.position.y = Float(j-offset)
                    self.rootNode.addChildNode(boxCopy)
                }
            }
        }
        
        required init?(coder aDecoder: NSCoder) {
            super.init(coder: aDecoder)
        }
    }
