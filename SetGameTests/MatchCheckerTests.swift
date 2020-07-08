import XCTest
@testable import SetGame

class MatchChekerTests: XCTestCase {
	
	func testMatchAllDifferent() {
		XCTAssertTrue(check(cards: cardSet(withColors: .different, withShapes: .different)),
					  "Set of completly different cards did not match")
	}
	
	func testMatchCheckingAllMismatch() {
		XCTAssertFalse(check(cards: cardSet(withColors: .mismatch, withShapes: .mismatch)),
					   "Set of mismatching cards for all features matched")
	}

	func testMatchCheckingForColor() {
		XCTAssertTrue(check(cards: cardSet(withColors: .same, withShapes: .same)),
					  "Set of matching cards with same color did not match")
		XCTAssertTrue(check(cards: cardSet(withColors: .different, withShapes: .same)),
					  "Set of matching cards with differnt colors did not match")
		XCTAssertFalse(check(cards: cardSet(withColors: .mismatch, withShapes: .same)),
					   "Set of mismatching cards with 2 red, 1 green matched")
	}
	
	func testMatchCheckingForShape() {
		XCTAssertTrue(check(cards: cardSet(withColors: .different, withShapes: .same)),
					  "Set of matching cards with same shape did not match")
		XCTAssertTrue(check(cards: cardSet(withColors: .different, withShapes: .mismatch)), "Set of matching cards with all different shapes did not match")
		XCTAssertFalse(check(cards: cardSet(withColors: .different, withShapes: .mismatch)),
					   "Set of cards mismatching on shape did not mismatch")
	}
}
