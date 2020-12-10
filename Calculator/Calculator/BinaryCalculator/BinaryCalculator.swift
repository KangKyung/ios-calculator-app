//
//  BinaryCalculator.swift
//  Calculator
//
//  Created by Yeon on 2020/12/07.
//

import Foundation

class BinaryCalculator {
    var postfixStack: Stack = Stack<String>()
    var calculateStack: Stack = Stack<String>()
    init() {}

}

extension BinaryCalculator: BasicCalculable {
    func add(first: String, second: String) throws -> String {
        var result: Int
        guard let firstNumber = Int(first, radix: 2),
              let secondNumber = Int(second, radix: 2) else {
            throw CalculatorError.unknown
        }
        result = firstNumber + secondNumber
        return String(result, radix: 2)
    }
    
    func subtract(first: String, second: String) throws -> String {
        var result: Int
        guard let firstNumber = Int(first, radix: 2),
              let secondNumber = Int(second, radix: 2) else {
            throw CalculatorError.unknown
        }
        result = firstNumber - secondNumber
        return String(result, radix: 2)
    }
    
    func clear() {
        postfixStack.removeAll()
        calculateStack.removeAll()
    }
}

extension BinaryCalculator: BinaryCalculable {
    func and(first: String, second: String) throws -> String {
        var result: Int
        guard let firstNumber = Int(first, radix: 2),
              let secondNumber = Int(second, radix: 2) else {
            throw CalculatorError.unknown
        }
        result = firstNumber & secondNumber
        return String(result, radix: 2)
    }
    
    func or(first: String, second: String) throws -> String {
        var result: Int
        guard let firstNumber = Int(first, radix: 2),
              let secondNumber = Int(second, radix: 2) else {
            throw CalculatorError.unknown
        }
        result = firstNumber | secondNumber
        return String(result, radix: 2)
    }
    
    func xor(first: String, second: String) throws -> String {
        var result: Int
        guard let firstNumber = Int(first, radix: 2),
              let secondNumber = Int(second, radix: 2) else {
            throw CalculatorError.unknown
        }
        result = firstNumber ^ secondNumber
        return String(result, radix: 2)
    }
    
    func nor(first: String, second: String) throws -> String {
        var result: Int
        guard let firstNumber = Int(first, radix: 2),
              let secondNumber = Int(second, radix: 2) else {
            throw CalculatorError.unknown
        }
        result = ~(firstNumber & secondNumber)
        return String(result, radix: 2)
    }
    
    func not(first: String) throws -> String {
        var result: Int
        guard let firstNumber = Int(first, radix: 2) else {
            throw CalculatorError.unknown
        }
        result = ~firstNumber
        return String(result, radix: 2)
    }
    
    func nand(first: String, second: String) throws -> String {
        var result: Int
        guard let firstNumber = Int(first, radix: 2),
              let secondNumber = Int(second, radix: 2) else {
            throw CalculatorError.unknown
        }
        result = ~(firstNumber & secondNumber)
        return String(result, radix: 2)
    }
    
    func rightShift(first: String, second: String) throws -> String {
        var result: Int
        guard let firstNumber = Int(first, radix: 2),
              let secondNumber = Int(second) else {
            throw CalculatorError.unknown
        }
        result = firstNumber >> secondNumber
        return String(result, radix: 2)
    }
    
    func leftShift(first: String, second: String) throws -> String {
        var result: Int
        guard let firstNumber = Int(first, radix: 2),
              let secondNumber = Int(second) else {
            throw CalculatorError.unknown
        }
        result = firstNumber << secondNumber
        return String(result, radix: 2)
    }
}
