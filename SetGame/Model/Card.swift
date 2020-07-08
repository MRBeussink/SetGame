import Foundation

public struct Card {
	let color: CardColor
	let shape: CardShape
	
	init (withColor color: CardColor, withShape shape: CardShape) {
		self.color = color
		self.shape = shape
	}
}

// MARK: Card features

enum CardColor {
	case red
	case green
	case purple
}

enum CardShape {
	case diamond
	case squiggle
	case oval
}

// MARK: CardBuilder

struct CardBuilder {
	var color: CardColor?
	var shape: CardShape?
	
	func with(_ consumer: (inout CardBuilder) -> Void) -> CardBuilder {
		var newBuilder = self
		consumer(&newBuilder)
		return newBuilder
	}
	
	func build() -> Card {
		return Card(withColor: self.color!, withShape: self.shape!)
	}
}
