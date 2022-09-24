//
//  MainMenu.swift
//  TheMatrix
//
//  Created by Abdullah Ayan on 22.09.2022.
//

import Foundation

var actions = ["Profile","Fight with Agents","Do Training","Rest","Speak with Morpheus","Give Up"]
var choice: String?

func executeMainMenu(){
    go()
    for (index,action) in actions.enumerated() {
        print("[\(index)] \(action)")
    }
    
    let selection = takeValidInput(range0to: actions.count)
    
    switch selection {
    case -1:
        executeMainMenu()
    case 0:
        executeProfilMenu()
    case 1:
        executeFightMenu()
    case 2:
        executeTrainingMenu()
    case 3:
        executeRestMenu()
    case 4:
        executeMorpheusMenu()
    case 5:
        executeGiveUpMenu()
    case 6:
        executeOracleMenu()
    default:
        print("UNCODED MENU")
        
    }
}
