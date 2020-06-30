import XCTest
@testable import SetGame

class MatchChekerTests: XCTestCase {

	func testMatchSameColor() {
		let cards = Array(repeating: Card(withColor: .red), count: 3)

		XCTAssertTrue(check(cards: cards), "Set of matching cards with same color did not match")
	}
	
	func testMatchAllDifferentColor() {
		let cards = [Card(withColor: .red), Card(withColor: .green), Card(withColor: .purple)]
		XCTAssertTrue(check(cards: cards), "Set of matching cards with differnt colors did not match")
	}
	
	func testMismatchColor() {
		let cards = [Card(withColor: .red), Card(withColor: .red), Card(withColor: .green)]
		
		XCTAssertFalse(check(cards: cards), "Set of mismatching cards with 2 red, 1 green matched")
	}
}
