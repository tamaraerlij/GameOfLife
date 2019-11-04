//
//  CellOfLife.swift
//  GameOfLife
//
//  Created by Tamara Erlij on 01/11/19.
//  Copyright © 2019 Tamara Erlij. All rights reserved.
//


import Foundation
import SceneKit

class Rules {
    
// MARK: RULES
// Populated
    // cell <= 1 : dead
    // cell = 2 and 3 = alive
    // cell = 4 or more = dead
// Unpopulated
    // cell with 3 neighbors = alive

    var initialState : Cell.State
    var finalState: Cell.State

    
    init(initialState: Cell.State, finalState: Cell.State) {
        self.initialState = initialState
        self.finalState = finalState
    }
}
