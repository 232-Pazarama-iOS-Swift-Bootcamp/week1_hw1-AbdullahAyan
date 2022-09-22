//
//  Neo.swift
//  TheMatrix
//
//  Created by Abdullah Ayan on 22.09.2022.
//

import Foundation

class Neo: Zionian {
    static var eatanCookies = 0
}

class Zionian: Person{
    static var killedAgent = 0
}

class Person {
    var name: String
    var job: String
    var age: Int
    var didTakeTheRedPill: Bool
    
    init() {
        print("\nWhat is your name.")
        self.name = readLine()!
        go()
        
        print("\nWhat is your job.")
        self.job = readLine()!
        go()
        
        print("\nWhat is your age.")
        self.age = takeValidInput(range0to: 99)
        go()
        
        print("\nBlue pill or Red pill? (for Blue press 0 and for Red press 1.)")
        let input = takeValidInput(range0to: 2)
        go()
        
        self.didTakeTheRedPill = ((input != 0) ? true : false)
        print(didTakeTheRedPill)
        go()
    }
}
