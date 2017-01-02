//
//  IterationTests.swift
//  IterationTests
//
//  Created by Adrian McDaniel on 12/14/16.
//  Copyright © 2016 dssafsfsd. All rights reserved.
//

import XCTest
@testable import Iteration


func testForwardBackward() {
    let test = forwardBackward(input: [1, 2, 3, 4, 5].makeIterator())
    let expected = [(1, 5), (2, 4), (3, 3), (4, 2), (5, 1)]
    
    let equal = zip(test, expected).reduce(test.count == expected.count) { (accum, tuple) in
        let (lhs, rhs) = tuple
        return accum && lhs == rhs
        
        
        
        
    }
    
    XCTAssertEqual(equal, true)
}


func testForwardBackward2() {
    let test = forwardBackward(input: [1, 2, 3, 4, 5, 6].makeIterator())
    let expected = [(1, 6), (2, 5), (3, 4), (4, 3), (5, 2), (6, 1)]
    
    let equal = zip(test, expected).reduce(test.count == expected.count) { (accum, tuple) in
        let (lhs, rhs) = tuple
        return accum && lhs == rhs
        
        
        
        
    }
    
    XCTAssertEqual(equal, true)
}

