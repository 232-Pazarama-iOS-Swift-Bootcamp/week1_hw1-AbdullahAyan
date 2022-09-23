//
//  RestMenu.swift
//  TheMatrix
//
//  Created by Abdullah Ayan on 23.09.2022.
//

import Foundation

func executeRestMenu() {
    go()
    let person = person as! Zionian
    if person.isRested {
        print("You alredy rested. Go fight!")

    } else {
        person.isRested = true
        print("You rested very well,now it's time to fight")
    }
    goWithEnter()
    executeMainMenu()
}
