import XCTest
@testable import SetGame

class MatchChekerTests: XCTestCase {

	func testMatch() {
		let cards = Array(repeating: Card(), count: 3)

		XCTAssertTrue(check(cards: cards), "Set of matching cards did not match")
	}
}
