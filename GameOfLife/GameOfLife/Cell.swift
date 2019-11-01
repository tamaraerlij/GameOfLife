//
//  Cell.swift
//  GameOfLife
//
//  Created by Tamara Erlij on 01/11/19.
//  Copyright © 2019 Tamara Erlij. All rights reserved.
//
import SceneKit
import Foundation
//
class Cell : SCNShape {
    // Cells represent each of the little lives in the simulation. They can be in one of two states — dead or alive — they also know their position in the world. These are the properties we’ll add to our cell.
    
      var isAlive: Bool = false

    
    public enum State {
        case alive
        case dead
    }
    
    public struct Cell {
        public let x: Int
        public let y: Int
        public var state: State
    }
    

//    private let aliveColor = UIColor.white.withAlphaComponent(0.75)
//    private var boxNode: SCNNode
//
//    // A color that can be set and the box will use
//       public var color: UIColor? {
//           didSet {
//               self.boxNode.geometry?.firstMaterial?.diffuse.contents = color ?? aliveColor
//           }
//    }
//        public var isAlive: Bool {
//            didSet {
//                boxNode.isHidden = !isAlive
//            }
//        }
//
//       init(isAlive alive: Bool, nodeWidth: CGFloat, nodeHeight: CGFloat) {
//            let box = SCNBox(width: nodeWidth, height: nodeHeight, length: nodeWidth, chamferRadius: 0)
//            // Set the firstMaterial to the aliveColor
//            box.firstMaterial?.diffuse.contents = aliveColor
//            boxNode = SCNNode(geometry: box)
//            isAlive = alive
//           // super.init()
//          //  addChildNode(boxNode)
//            boxNode.isHidden = !isAlive
//        }
        
       // required init?(coder aDecoder: NSCoder) {
         //   fatalError("init(coder:) has not been implemented")
      //  }
    
}
