import Foundation

public struct CardContent: Equatable {
	public let color: CardColor
	public let shape: CardShape
	public let shading: CardShading
	public let shapeCount: Int
	
	init (withColor color: CardColor, withShape shape: CardShape, withShading shading: CardShading, withShapeCount shapeCount: Int, withId id: Int = 0) {
		self.color = color
		self.shape = shape
		self.shading = shading
		self.shapeCount = shapeCount
	}
}

// MARK: Card features

public enum CardColor {
	case red
	case green
	case purple
}

public enum CardShape {
	case diamond
	case squiggle
	case oval
}

public enum CardShading {
	case solid
	case stripped
	case open
}

// MARK: CardBuilder

struct CardBuilder {
	var color: CardColor?
	var shape: CardShape?
	var shading: CardShading?
	var shapeCount: Int?
	
	func with(_ consumer: (inout CardBuilder) -> Void) -> CardBuilder {
		var newBuilder = self
		consumer(&newBuilder)
		return newBuilder
	}
	
	func build() -> CardContent {
		return CardContent(withColor: self.color!, withShape: self.shape!, withShading: self.shading!, withShapeCount: self.shapeCount!)
	}
}
