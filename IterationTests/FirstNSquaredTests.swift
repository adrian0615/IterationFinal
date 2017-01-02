//
//  IterationTests.swift
//  IterationTests
//
//  Created by Adrian McDaniel on 12/14/16.
//  Copyright © 2016 dssafsfsd. All rights reserved.
//

import XCTest
@testable import Iteration

func testIterator() {
    let firstSquared = FirstNSquared(n: 2)
    let expected = [0, 1, 4]
    let result = Array(firstSquared)

    
    XCTAssertEqual(result, expected)
}


func testIterator2() {
    let firstSquared = FirstNSquared(n: 3)
    let expected = [0, 1, 4, 9]
    let result = Array(firstSquared)
    
    
    XCTAssertEqual(result, expected)
}



func testIterator3() {
    let firstSquared = FirstNSquared(n: 6)
    let expected = [0, 1, 4, 9, 16, 25]
    let result = Array(firstSquared)
    
    
    XCTAssertEqual(result, expected)
}
