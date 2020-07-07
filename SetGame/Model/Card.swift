import Foundation

struct Card {
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

public struct CardBuilder {
	var color: CardColor?
	var shape: CardShape?
	
	func with(_ consumer: (inout CardBuilder) -> Void) -> CardBuilder {
		var newBuilder = self
		consumer(&newBuilder)
		return newBuilder
	}
	
	func build() throws -> Card {
		guard let color = self.color, let shape = self.shape
			else { throw fatalError("Build called on builder without all properties set.")}
		return Card(withColor: color, withShape: shape)
	}
}
