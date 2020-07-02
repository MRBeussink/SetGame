import Foundation

struct Card {
	let color: CardColor
	let shape: CardShape
	
	init (withColor color: CardColor, withShape shape: CardShape) {
		self.color = color
		self.shape = shape
	}
}

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
