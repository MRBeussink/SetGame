import Foundation

struct Deck {
	
	private(set) var cards: [Card] = []
	
	
	init() {
		self.cards = generateDeck()
	}
	
	private func generateDeck() -> [Card] {
		var cards: [Card] = []
		for color: CardColor in [ .red, .green, .purple ]{
			for shape: CardShape in [ .diamond, .oval, .squiggle ] {
				for shading: CardShading in [ .open, .solid, .stripped ] {
					for number in 1...3 {
						cards.append(CardBuilder().with{
							$0.color = color
							$0.shape = shape
							$0.shading = shading
							$0.shapecCount = number}
						.build())
					}
				}
			}
		}
		return cards
	}
}
