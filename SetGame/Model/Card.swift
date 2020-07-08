import Foundation

public struct Card {
	let color: CardColor
	let shape: CardShape
	let shading: CardShading
	let shapeCount: Int
	
	init (withColor color: CardColor, withShape shape: CardShape, withShading shading: CardShading, withShapeCount shapeCount: Int) {
		self.color = color
		self.shape = shape
		self.shading = shading
		self.shapeCount = shapeCount
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

enum CardShading {
	case solid
	case stripped
	case open
}

// MARK: CardBuilder

struct CardBuilder {
	var color: CardColor?
	var shape: CardShape?
	var shading: CardShading?
	var shapecCount: Int?
	
	func with(_ consumer: (inout CardBuilder) -> Void) -> CardBuilder {
		var newBuilder = self
		consumer(&newBuilder)
		return newBuilder
	}
	
	func build() -> Card {
		return Card(withColor: self.color!, withShape: self.shape!, withShading: self.shading!, withShapeCount: self.shapecCount!)
	}
}
