//
//  main.swift
//  Homework1
//
//  Created by Abdullah Ayan on 21.09.2022.
//

import Foundation

let openingMessages = """
The Matrix has you...

Follow the white rabbit...

Knock knock, Neo.
"""

let theMatrix = """
 ______   __  __     ______        __    __     ______     ______   ______     __     __  __
/\\__  _\\ /\\ \\_\\ \\   /\\  ___\\      /\\ "-./  \\   /\\  __ \\   /\\__  _\\ /\\  == \\   /\\ \\   /\\_\\_\\_\\
\\/_/\\ \\/ \\ \\  __ \\  \\ \\  __\\      \\ \\ \\-./\\ \\  \\ \\  __ \\  \\/_/\\ \\/ \\ \\  __<   \\ \\ \\  \\/_/\\_\\/_
   \\ \\_\\  \\ \\_\\ \\_\\  \\ \\_____\\     \\ \\_\\ \\ \\_\\  \\ \\_\\ \\_\\    \\ \\_\\  \\ \\_\\ \\_\\  \\ \\_\\   /\\_\\/\\_\\
    \\/_/   \\/_/\\/_/   \\/_____/      \\/_/  \\/_/   \\/_/\\/_/     \\/_/   \\/_/ /_/   \\/_/   \\/_/\\/_/

"""

print(theMatrix)
wait()
go()

print(openingMessages)

let input = readLine()

print(input!)


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
