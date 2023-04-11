//
//  RandomNumber.swift
//  RandomizerApp
//
//  Created by MikhaiL on 11.04.2023.
//

import Foundation

struct RandomNumber {
    var minimumValue: Int
    var maximumValue: Int
    
    var getRandom: Int {
        Int.random(in: minimumValue...maximumValue)
    }
}
