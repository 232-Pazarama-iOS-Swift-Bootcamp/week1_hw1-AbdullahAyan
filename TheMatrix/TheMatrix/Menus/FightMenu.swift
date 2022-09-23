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
        zionian.killedAgent += 1
        Agent.killedAgent += 1
        print("killed \(zionian.killedAgent) agent!")
        fightInput = readLine()
    }
    go()
    executeMainMenu()
}
