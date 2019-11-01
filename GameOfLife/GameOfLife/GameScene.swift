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
 override init() {
            super.init()
            let grid: Int = 8
            
            for i in 0..<8 {
                for j in 0..<8 {
                    let geometria = SCNBox(width: 0.7, height: 0.7, length: 0.7, chamferRadius: 0.005)
                    let nodeDaCaixa = SCNNode(geometry: geometria)
                    
                    // Setar a posicao da caixa //
                   // let boxCopy = NodeDaCaixa.copy() as! SCNNode
                    nodeDaCaixa.position.x = Float(i-grid)
                    nodeDaCaixa.position.y = Float(j-grid)
                    self.rootNode.addChildNode(nodeDaCaixa)
                }
            }
        }
        
        required init?(coder aDecoder: NSCoder) {
            super.init(coder: aDecoder)
        }
    }
