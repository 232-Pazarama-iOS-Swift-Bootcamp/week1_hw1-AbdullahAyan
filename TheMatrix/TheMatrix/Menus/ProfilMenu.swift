//
//  ProfilMenu.swift
//  TheMatrix
//
//  Created by Abdullah Ayan on 24.09.2022.
//

import Foundation

func executeProfilMenu() {
    go()
    
    if person is Neo {
        print("YOU ARE THE ONE!\n")
        print("Eaten Cookies: \(Neo.eatenCookies)")
    }
    
    let person = person as! Zionian

    print("Name: \(person.name)")
    print("Skill Level: \(person.skillLevel)")
    print("Killability: \(person.killability)")
    print("Trainability: \(person.trainability)")
    print("Budget: \(person.killedAgent)")
    goWithEnter()
    executeMainMenu()
}


