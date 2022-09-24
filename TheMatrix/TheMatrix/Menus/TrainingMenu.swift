//
//  TrainingMenu.swift
//  TheMatrix
//
//  Created by Abdullah Ayan on 23.09.2022.
//

import Foundation

func executeTrainingMenu() {
    go()
    let person = person as! Zionian
    
    if person.skillLevel == 0 {
        print("Learn some skills before training!")
    }else if person.isRested {
        person.killability *= person.trainability
        person.isRested = false
        print("You've done your training well, now it's time to rest")
    } else {
        print("You are exhausted, get some rest.")
    }
    goWithEnter()
    executeMainMenu()
}
