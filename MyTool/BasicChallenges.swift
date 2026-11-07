//
//  TypesAndOperations.swift
//  MyTool
//
//  Created by Ali Soner Inceoglu on 06.11.26.
//

import Foundation
import Playgrounds

let coordinate = (2, 3)
let namedCoordinate = (row: 2, column: 3)

func numOfDays(in month: String, of year: Int) -> Int? {
    switch month.lowercased() {
    case "january", "march", "may", "july",
        "august", "october", "december":
        return 31
        
    case "february":
        let isLeapYear = (year.isMultiple(of: 4) && !year.isMultiple(of: 100)) || year.isMultiple(of: 400)
            
        return isLeapYear ? 29 : 28
        
    case "april", "june", "september", "november":
        return 30
        
    default:
        return nil
    }
}

func nextPowerOfTwo(for number: Int) -> Int {
    var power = 0
    
    while pow(2, power) < Decimal(number) {
        power += 1
    }
    
    return power
}

func triangularNumber(of n: Int) -> Int {
    (1...n).reduce(0, +)
}

func fibonacci(of n: Int) -> Int {
    precondition(n > 0, "n must be positive")
    
    if n <= 2 {
        return 1
    }
    
    return fibonacci(of: n - 1) + fibonacci(of: n - 2)
}

#Playground {
    
}
