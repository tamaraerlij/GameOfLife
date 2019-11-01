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
    
 override init() {
            super.init()
            let offset: Int = 8
            
            for i in 0..<8 {
                for j in 0..<8 {
                    let geometria = SCNBox(width: 0.7, height: 0.7, length: 0.7, chamferRadius: 0.005)
                    let nodeDaCaixa = SCNNode(geometry: geometria)
                    
                    geometria.firstMaterial?.diffuse.contents = UIColor.red
                     geometria.firstMaterial?.specular.contents = UIColor.white
                     geometria.firstMaterial?.emission.contents = UIColor.blue
                    
                    // Setar a posicao da caixa //
                   let boxCopy = nodeDaCaixa.copy() as! SCNNode
                    nodeDaCaixa.position.x = Float(i-offset)
                    nodeDaCaixa.position.y = Float(j-offset)
                    self.rootNode.addChildNode(boxCopy)
                }
            }
        }
        
        required init?(coder aDecoder: NSCoder) {
            super.init(coder: aDecoder)
        }
    }
