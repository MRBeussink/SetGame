import Foundation

struct Card {
	let color: CardColor
	
	init (withColor color: CardColor) {
		self.color = color
	}
}

enum CardColor {
	case red
	case green
	case purple
}
