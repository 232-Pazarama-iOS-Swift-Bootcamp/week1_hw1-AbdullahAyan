//
//  MainMenu.swift
//  TheMatrix
//
//  Created by Abdullah Ayan on 22.09.2022.
//

import Foundation

var actions = ["Fight with Agents","Do Training","Rest","Speak with Morpheus","Give Up"]
var choice: String?

func executeMainMenu(){
    go()
    for (index,action) in actions.enumerated() {
        print("[\(index)] \(action)")
    }
    
    let selection = takeValidInput(range0to: actions.count)
    
    switch selection {
    case 0:
        executeFightMenu()
    case 1:
        executeTrainingMenu()
    case 2:
        executeRestMenu()
    case 3:
        executeMorpheusMenu()
    default:
        print("UNCODED MENU")
        
    }
}
