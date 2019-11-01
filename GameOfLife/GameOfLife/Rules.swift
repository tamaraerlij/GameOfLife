//
//  CellOfLife.swift
//  GameOfLife
//
//  Created by Tamara Erlij on 01/11/19.
//  Copyright © 2019 Tamara Erlij. All rights reserved.
//


import Foundation
import SceneKit

// MARK: RULES
// The game takes place on a grid of cells. Each cell can either be alive or dead. Four simple rules determine the vitality of each cell.
//1. Any live cell with fewer than two live neighbors will die.
//2. Any live cell with two or three live neighbors will live on to the next generation.
//3. Any live cell with more than three live neighbors will die.
//4. Any dead cell with exactly three live neighbors will become a live cell.
