//
//  MainMenu.swift
//  TheMatrix
//
//  Created by Abdullah Ayan on 22.09.2022.
//

import Foundation

let actions = ["Fight with Agents","Do Training","Rest","Go to Oracle (Market)","Give Up"]
var choice: String?

func executeMainMenu(){
    for (index,action) in actions.enumerated() {
        print("[\(index)] \(action)")
    }
    
    let choice = takeValidInput(range0to: actions.count)
    
}


func takeValidInput(range0to range: Int) -> Int{
    print("\nEnter a number.")
    while(true) {
        let choice = readLine()
        if let choice {
            if let num = Int(choice) {
                if num >= 0 && num < range {
                    return num
                }
                print("Enter 0-\(range) value")
            }
            print("Enter a number,not other thing.")
        }
    }
}
