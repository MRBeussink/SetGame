import XCTest
@testable import SetGame

class MatchChekerTests: XCTestCase {

	func testMatchSameColor() {
		let cards = [Card(withColor: .red, withShape: .diamond),
					 Card(withColor: .red, withShape: .diamond),
					 Card(withColor: .red, withShape: .diamond)]
		
		XCTAssertTrue(check(cards: cards), "Set of matching cards with same color did not match")
	}
	
	func testMatchAllDifferentColor() {
		let cards = [Card(withColor: .red, withShape: .diamond),
					 Card(withColor: .green, withShape: .diamond),
					 Card(withColor: .purple, withShape: .diamond)]
		
		XCTAssertTrue(check(cards: cards), "Set of matching cards with differnt colors did not match")
	}
	
	func testMismatchColor() {
		let cards = [Card(withColor: .red, withShape: .diamond),
					 Card(withColor: .red, withShape: .diamond),
					 Card(withColor: .green, withShape: .diamond)]
		
		XCTAssertFalse(check(cards: cards), "Set of mismatching cards with 2 red, 1 green matched")
	}
	
	func testMatchSameShape() {
		let cards = [Card(withColor: .red, withShape: .diamond),
					 Card(withColor: .green, withShape: .diamond),
					 Card(withColor: .purple, withShape: .diamond)]
		
		XCTAssertTrue(check(cards: cards), "Set of matching cards with same shape did not match")
	}
	
	func testMatchAllDifferent() {
		let cards = [Card(withColor: .red, withShape: .diamond),
					 Card(withColor: .red, withShape: .squiggle),
					 Card(withColor: .red, withShape: .oval)]
		
		XCTAssertTrue(check(cards: cards), "Set of matching cards with all different shapes did not match")
	}
	
	func testMismatchShape() {
		let cards = [Card(withColor: .red, withShape: .diamond),
					 Card(withColor: .red, withShape: .diamond),
					 Card(withColor: .red, withShape: .squiggle)]
		
		XCTAssertFalse(check(cards: cards), "Set of cards mismatching on shape did not mismatch")
	}
}
