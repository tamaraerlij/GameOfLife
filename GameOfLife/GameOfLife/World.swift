//
//  World.swift
//  GameOfLife
//
//  Created by Tamara Erlij on 04/11/19.
//  Copyright © 2019 Tamara Erlij. All rights reserved.
//

import Foundation
import SceneKit
import UIKit

 class World {
  //   var cells = [Cell]()
    let size: Int
    var life: [[[Bool]]] = []
    var cellsOfLife: [[[Cell]]] = []
    var zSize: Int
    var width:  CGFloat
    var height: CGFloat
    var isBuilt = false
    

 init(n: Int, width: CGFloat, height: CGFloat, withAliveCells cells: [float3]? = nil, nHeight: Int = 5) {
     self.size = n
     self.zSize = nHeight
     self.width = width
     self.height = height
     //super.init()
     setupLife(withAliveCells: cells)
 }
    
    required init?(coder aDecoder: NSCoder) {
          fatalError("init(coder:) has not been implemented")
      }
      
    // MARK: For the SetupLife function we want to randomaly generate a cube or take in alive cell loctions.
       private func setupLife(withAliveCells cellLocations: [float3]? = nil) {
           for x in (0 ..< size) {
               var plane: [[Bool]] = []
               for y in (0 ..< size) {
                   var row: [Bool] = []
                   for z in (0 ..< zSize) {
                       if let cells = cellLocations {
                           // Center the Location
                           let count = cells.filter { Int($0.x) + Int(size / 2) == x &&
                                                       Int($0.y) + Int(size / 2) == y &&
                                                       Int($0.z + 1) == z }
                           row.append(!count.isEmpty)
                           
                       } else {
                           // Random!
                           row.append(Bool.random())
                       }
                   }
                   plane.append(row)
               }
               life.append(plane)
           }
       }
       
       
    
}
