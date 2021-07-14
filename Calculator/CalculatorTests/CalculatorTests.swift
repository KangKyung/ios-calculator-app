//
//  CalculatorTests.swift
//  CalculatorTests
//
//  Created by 강경 on 2021/04/02.
//

import XCTest
@testable import Calculator

class CalculatorTests: XCTestCase {
  let calculateBinaryNumber = CalculateBinaryNumber()
  let calculateDecimalNumber = CalculateDecimalNumber()
  
  override func setUpWithError() throws {
    try super.setUpWithError()
  }
  
  override func tearDownWithError() throws {
    try super.tearDownWithError()
  }
  
  func test_decimal_plus() {
    XCTAssertEqual(calculateDecimalNumber.plus(111, 222), 333)
  }
  
}
