//
//  OracleMenu.swift
//  TheMatrix
//
//  Created by Abdullah Ayan on 24.09.2022.
//

import Foundation

var cookies: [Cookie] = [Cookie(cost: 100, flavor: "Chocolate"),Cookie(cost: 200, flavor: "Raspberry"),Cookie(cost: 300, flavor: "Oreo")]

func executeOracleMenu() {
    go()
    let person = person as! Neo
    
    print("Your balance is \(person.killedAgent)\n")
    
    for (index,cookie) in cookies.enumerated() {
        print("[\(index)] \(cookie.flavor) Cookie ...Cost: \(cookie.cost)")
    }
    
    print("Take a cookie. I promise, by the time you're done eating it, you'll feel right as rain. (Press Enter for skip.)")
    
    let choice = takeValidInput(range0to: cookies.count)
    if choice == -1 {
        executeMainMenu()
    }
    go()
    if !cookies[choice].wasItTaken {
        if Int(person.killedAgent) >= cookies[choice].cost {
            Neo.eatenCookies += 1
            cookies[choice].wasItTaken = true
            person.killedAgent -= cookies[choice].cost
            print("Purchase successful. Your new balance is \(person.killedAgent)\n")
            person.killability *= 1.5
            print("\nYour killability level has increased!")
            if Neo.eatenCookies == 3 {
                go()
                print("You Win, Game Over")
                return
            }
        }else {
            print("\nYou need to kill some more agents, no balance")
        }
    }else {
        print("\nYou already got that cookie.")
    }
    
    goWithEnter()
    executeMainMenu()
}
