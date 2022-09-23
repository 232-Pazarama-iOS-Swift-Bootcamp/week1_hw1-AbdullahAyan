//
//  Sellable.swift
//  TheMatrix
//
//  Created by Abdullah Ayan on 23.09.2022.
//

import Foundation


protocol Sellable {
    var cost: Int { get }
}

protocol NeoSellable: Sellable {
}

