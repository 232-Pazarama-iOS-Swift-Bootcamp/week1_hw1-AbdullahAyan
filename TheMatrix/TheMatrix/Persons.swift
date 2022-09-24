//
//  Person.swift
//  TheMatrix
//
//  Created by Abdullah Ayan on 22.09.2022.
//

import Foundation

struct Agent {
    static var deadAgent: Double = 0
    static var dieabilty: Double {
        if Agent.deadAgent < 20 {
            return 1.0
        }else if Agent.deadAgent < 60 {
            return 2.0
        }else {
            return 3.0
        }
    }
}

class Neo: Zionian {
    static var eatenCookies = 0
}

class Zionian: Person{
    var trainability = 1.0 {
        didSet {
            print("Trainabilty:\n\(String(format: "%.1f", oldValue)) -> \(String(format: "%.1f", trainability))\n")
        }
    }
    var killability = 1.0 {
        didSet {
            print("Killability:\n\(String(format: "%.1f", oldValue)) -> \(String(format: "%.1f", killability))\n")
        }
    }
    var killedAgent = 0
    var skillLevel = 0
    var isRested = true
}

class Person {
    var name: String
    var job: String
    var age: Int
    var didTakeTheRedPill: Bool
    
    init(name: String, job: String, age: Int, didTakeTheRedPill: Bool) {
        self.name = name
        self.job = job
        self.age = age
        self.didTakeTheRedPill = didTakeTheRedPill
    }
    
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


