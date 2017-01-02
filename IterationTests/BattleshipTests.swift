//
//  IterationTests.swift
//  IterationTests
//
//  Created by Adrian McDaniel on 12/14/16.
//  Copyright © 2016 dssafsfsd. All rights reserved.
//

import XCTest
@testable import Iteration





func testBattleShip() {
    let result = Array(Battleship(["a", "b", "c"], [1, 2]))
    let expected: [(Character, Int)]  = [("a", 1), ("a", 2), ("b", 1), ("b", 2), ("c", 1), ("c", 2)]
    
    _ = zip(result, expected).reduce(result.count == expected.count) { (accum, tuple) in
        let (lhs, rhs) = tuple
        return accum && lhs == rhs
    }
}

func testBattleShip2() {
    let result = Array(Battleship(["a", "b", "c", "d"], [1, 2]))
    let expected: [(Character, Int)]  = [("a", 1), ("a", 2), ("b", 1), ("b", 2), ("c", 1), ("c", 2), ("d", 1), ("d", 2)]
    
    _ = zip(result, expected).reduce(result.count == expected.count) { (accum, tuple) in
        let (lhs, rhs) = tuple
        return accum && lhs == rhs
    }
}
