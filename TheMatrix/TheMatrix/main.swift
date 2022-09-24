//
//  main.swift
//  TheMatrix
//
//  Created by Abdullah Ayan on 22.09.2022.
//

import Foundation

print(openingMessages)
wait()
go()
print(theMatrix)
wait()
go()


let tempPerson = Person()
var person: Person!

print(messageFromMorpheus)
goWithEnter()

if tempPerson.name == "Thomas Anderson" && tempPerson.didTakeTheRedPill{
    person = Neo(name: tempPerson.name, job: tempPerson.job, age: tempPerson.age, didTakeTheRedPill: tempPerson.didTakeTheRedPill)
    actions.append("Oracle is waiting you!")
    executeMainMenu()
}else if tempPerson.didTakeTheRedPill {
    person = Zionian(name: tempPerson.name, job: tempPerson.job, age: tempPerson.age, didTakeTheRedPill: tempPerson.didTakeTheRedPill)
    executeMainMenu()
}else {
    person = tempPerson
    print("Live in your unreal world! (Take the Red Pill to play.)")
}




// MARK: - Functions

func wait(){
    do {
        sleep(2)
    }
}

func go(){
    for _ in Range(0...50) {
        print("")
    }
}

func goWithEnter(){
    print("Press enter for continue...")
    readLine()
    for _ in Range(0...50) {
        print("")
    }
}

func takeValidInput(range0to range: Int) -> Int{
    print("\nEnter a number.")
    while(true) {
        let choice = readLine()
        if let choice {
            if choice == "" {
                return -1
            }
            if let num = Int(choice) {
                if num >= 0 && num < range {
                    return num
                }
                print("Enter 0-\(range-1) value")
            }
            print("Enter a number,not other thing.")
        }
    }
}
