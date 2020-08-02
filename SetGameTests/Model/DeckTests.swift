//
//  SetGame.swift
//  SetGameTests
//
//  Created by Mark Beussink on 7/27/20.
//  Copyright © 2020 Mark Beussink. All rights reserved.
//

import XCTest
@testable import SetGame

class SetGameTest: XCTestCase {

	func testInitializeWith81UniqueCards() {
		
		let gameModel = Deck()
		
		XCTAssertTrue(Set(gameModel.cards).count == 81, "New game does not start with 81 unique cards")
	}
}
