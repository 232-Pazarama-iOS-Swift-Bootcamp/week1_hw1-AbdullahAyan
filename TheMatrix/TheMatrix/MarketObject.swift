//
//  MarketObject.swift
//  TheMatrix
//
//  Created by Abdullah Ayan on 23.09.2022.
//

import Foundation


struct MartialArt: Sellable {
    var cost: Int
    var name: String
    var learned = false
}


struct Cookie: NeoSellable,Equatable {
    var wasItTaken = false
    var cost: Int    
    var flavor: String
}
