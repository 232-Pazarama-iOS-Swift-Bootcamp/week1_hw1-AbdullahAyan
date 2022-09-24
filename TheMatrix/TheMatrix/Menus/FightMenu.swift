//
//  FightMenu.swift
//  TheMatrix
//
//  Created by Abdullah Ayan on 23.09.2022.
//

import Foundation

func executeFightMenu() {
    print("It's time to fight!, Press any key for fight, e for exit.")
    var fightInput = readLine()
    let zionian = person as! Zionian
    while(fightInput != "e") {
        if zionian.killability >= Agent.dieabilty {
            zionian.killedAgent += 1
            Agent.deadAgent += 1
            print("killed \(zionian.killedAgent) agent!, Press any key for fight, e for exit.")
            fightInput = readLine()
        } else if  zionian.killability < Agent.dieabilty {
            print("Agents are more powerful than you !!!. Learn some martial art from Morpheus, do some training and come back. Press e for exit.")
            fightInput = readLine()

        }
    }
    go()
    executeMainMenu()
}
