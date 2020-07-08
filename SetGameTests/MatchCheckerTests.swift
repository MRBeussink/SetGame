import XCTest
@testable import SetGame

class MatchChekerTests: XCTestCase {
	
	func testMatchCheckingAllDifferent() {
		XCTAssertTrue(check(cards: cardSet(withColors: .different, withShapes: .different,
										   withShading: .different, withShapeCount: .different)),
					  "Set of completly different cards did not match")
	}
	
	func testMatchCheckingAllMismatch() {
		XCTAssertFalse(check(cards: cardSet(withColors: .mismatch, withShapes: .mismatch,
											withShading: .mismatch, withShapeCount: .mismatch)),
					   "Set of mismatching cards for all features matched")
	}

	func testMatchCheckingForColor() {
		XCTAssertTrue(check(cards: cardSet(withColors: .different, withShapes: .different, withShading: .same, withShapeCount: .different)),
					  "Set of matching cards with same color did not match")
		XCTAssertTrue(check(cards: cardSet(withColors: .different, withShapes: .same,
										   withShading: .different, withShapeCount: .different)),
					  "Set of matching cards with differnt colors did not match")
		XCTAssertFalse(check(cards: cardSet(withColors: .mismatch, withShapes: .same,
											withShading: .same, withShapeCount: .same)),
					   "Set of mismatching cards with 2 red, 1 green matched")
	}
	
	func testMatchCheckingForShape() {
		XCTAssertTrue(check(cards: cardSet(withColors: .different, withShapes: .same,
										   withShading: .different, withShapeCount: .different)),
					  "Set of matching cards with same shape did not match")
		XCTAssertTrue(check(cards: cardSet(withColors: .same, withShapes: .different,
										   withShading: .same, withShapeCount: .same)),
					  "Set of matching cards with all different shapes did not match")
		XCTAssertFalse(check(cards: cardSet(withColors: .same, withShapes: .mismatch,
											withShading: .same, withShapeCount: .same)),
					   "Set of cards mismatching on shape did not mismatch")
	}
	
	func testMatchCheckingForShading() {
		XCTAssertTrue(check(cards: cardSet(withColors: .different, withShapes: .different,
										   withShading: .same, withShapeCount: .different)),
					  "Set of matching cards with same shading did not match")
		XCTAssertTrue(check(cards: cardSet(withColors: .same, withShapes: .same,
										   withShading: .different, withShapeCount: .same)),
					  "Set of matching cards with all different shading did not match")
		XCTAssertFalse(check(cards: cardSet(withColors: .same, withShapes: .same,
											withShading: .mismatch, withShapeCount: .same)),
					   "Set of cards mismatching on shading did not mismatch")
	}
	
	func testMatchCheckingForShapeCount() {
		XCTAssertTrue(check(cards: cardSet(withColors: .different, withShapes: .different, withShading: .different, withShapeCount: .same)),
					  "Set of matching cards with same number of shapes did not match")
		XCTAssertTrue(check(cards: cardSet(withColors: .same, withShapes: .same, withShading: .same, withShapeCount: .different)),
					  "Set of matching cards with all different number of shapes did not match")
		XCTAssertFalse(check(cards: cardSet(withColors: .same, withShapes: .same, withShading: .same, withShapeCount: .mismatch)),
					   "Set of cards mismatching on number of shapes did not mismatch")
	}
}
