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

func addOneTo(_ value: inout Int) {
    value += 1
}

/// Calculates the average of three values
/// - Parameters:
/// - a: The first value.
/// - b: The second value.
/// - c: The third value.
/// - Returns: The average of the three values.
func calculateAverage(of a: Double, and b: Double, and c: Double) -> Double {
    let total = a + b + c
    let average = total / 3
    return average
}

func isNumberDivisible(_ number: Int, by divisor: Int) -> Bool {
    number % divisor == 0
}

func isPrime(_ number: Int) -> Bool {
    if number < 1 {
        return false
    }
    
    
    for divisor in 2..<number {
        if isNumberDivisible(number, by: divisor) {
            return false
        }
    }
    
    return true
}

func divideIfWhole(_ number: Int, by divisor: Int) -> Int? {
    if number % divisor != 0 {
        return nil
    }
    
    return number / divisor
}

func printNumber(_ number: Int???) {
    guard let number = number else { return }
    guard let number = number else { return }
    guard let number = number else { return }
    print(number)
}

#Playground {
    let num = divideIfWhole(10, by: 3) ?? 0
    print("It divides \(num) times.")
}
