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
class Cell  {
    // Cells represent each of the little lives in the simulation. They can be in one of two states — dead or alive — they also know their position in the world. These are the properties we’ll add to our cell.
    
    // MARK: Constantes e variáveis
     let x: Int = 0
     let y: Int = 0
     var position: (x: Int, y: Int)
     var state: State
     var isAlive: Bool
     
    // MARK: inicializar a classe
    init(x: Int, y: Int) {
        position = (x,y)
        state = .dead
        isAlive = false
    }
    
    // MARK: Estado da célula
    public enum State {
        case alive
        case dead
    }
    
    // MARK: Pensar em como copiar/reproduzir a célula várias vezes

    
}
