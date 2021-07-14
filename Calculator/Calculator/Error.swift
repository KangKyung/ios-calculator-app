//
//  Error.swift
//  Calculator
//
//  Created by 강경 on 2021/04/01.
//

import Foundation

enum CalculateByOperatorError: Error, CustomStringConvertible {
  case cantNotMatchStringToDecimalOperators
  case cantNotMatchStringToBinaryOperators
  case cantNotDivideByZero
  
  var description: String {
    switch self {
    case .cantNotMatchStringToDecimalOperators:
      return "해당하는 10진수 연산자가 없습니다."
    case .cantNotMatchStringToBinaryOperators:
      return "해당하는 2진수 연산자가 없습니다."
    case .cantNotDivideByZero:
      return "0으로는 나눌 수 없습니다."
    }
  }
}
