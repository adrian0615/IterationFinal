//
//  CollatzTests.swift
//  Iteration
//
//  Created by Adrian McDaniel on 12/14/16.
//  Copyright © 2016 dssafsfsd. All rights reserved.
//

import XCTest
@testable import Iteration


func testCollatz() {
    let test = Collatz(n: 3).collatzConvert()
    let expected = [10, 5, 16, 8, 4, 2, 1]
    
    XCTAssertEqual(test, expected)
    
}

