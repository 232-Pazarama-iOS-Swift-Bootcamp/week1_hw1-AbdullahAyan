//
//  MorpheusMenu.swift
//  TheMatrix
//
//  Created by Abdullah Ayan on 23.09.2022.
//

import Foundation

let martialArts: [MartialArt] = [MartialArt(cost: 20, name: "Karate"),MartialArt(cost: 40, name: "Jiu Jitsu"),MartialArt(cost: 60, name: "Kung-Fu"),MartialArt(cost: 80, name: "Judo"),MartialArt(cost: 100, name: "Teakwando")]

func executeMorpheusMenu() {
    go()
    let person = person as! Zionian
    if !person.isSpokeWithMorpheus {
        person.isSpokeWithMorpheus = true
    }
    
    print("Your balance is \(Agent.killedAgent)\n")
    
    for (index,art) in martialArts.enumerated() {
        print("[\(index)] \(art.name)...Cost: \(art.cost)")
    }
    
    print("Select Martial Art you want to learn. (Press Enter for skip.)")
    
    let choice = takeValidInput(range0to: martialArts.count)
    if choice == -1 {
        executeMainMenu()
    }
    go()
    if !martialArts[choice].learned {
        if Int(Agent.killedAgent) > martialArts[choice].cost {
            person.trainability *= 1.1
            print("\nYour trainability level has increased!")
        }else {
            print("\nYou need to kill some more agents, no balance")
        }
    }else {
        print("\nYou already learned that art.")
    }
    
    goWithEnter()
    executeMainMenu()
}
