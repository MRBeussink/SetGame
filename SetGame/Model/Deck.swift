import Foundation

struct Deck {
	
	private(set) var cards: [Card] = []
	
	
	init() {
		self.cards = generateDeck()
	}
	
	private func generateDeck() -> [Card] {
		let buildersWithColor = addColorTo(cardBuilders: [ CardBuilder() ])
		let buildersWithShape = addShapeTo(cardBuilders: buildersWithColor)
		let buildersWithShadding = addShadingTo(cardBuilders: buildersWithShape)
		let buildersWithCount = addCountTo(cardBuilders: buildersWithShadding)
		
		return buildersWithCount.map { $0.build() }
	}
}
