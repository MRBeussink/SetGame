//
//  CardTests.swift
//  SetGameTests
//
//  Created by Mark Beussink on 8/2/20.
//  Copyright © 2020 Mark Beussink. All rights reserved.
//

import XCTest
import Cuckoo

@testable import SetGame

class CardTests: XCTestCase {

	func testShapeCountOutsideOfAcceptableRangeThrows() {
		XCTAssertThrowsError(Card(withColor: .red, withShape: .diamond, withShading: .open, withShapeCount: 0))
		XCTAssertThrowsError(Card(withColor: .red, withShape: .diamond, withShading: .open, withShapeCount: 4))
	}
}
