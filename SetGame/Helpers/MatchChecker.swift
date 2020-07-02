import Foundation

func check(cards: [Card]) -> Bool {
	return checkColor(cards: cards)
		&& checkShape(cards: cards)
}

private func checkColor(cards: [Card]) -> Bool {
	if cards[0].color == cards[1].color
		&& cards[0].color == cards[2].color
		&& cards[1].color == cards[2].color {
		return true
	} else if cards[0].color != cards[1].color
			&& cards[0].color != cards[2].color
			&& cards[1].color != cards[2].color {
			return true
	}
	
	return false
}

private func checkShape(cards: [Card]) -> Bool {
	if cards[0].shape == cards[1].shape
		&& cards[0].shape == cards[2].shape
		&& cards[1].shape == cards[2].shape {
		return true
	} else if  cards[0].shape != cards[1].shape
		&& cards[0].shape != cards[2].shape
		&& cards[1].shape != cards[2].shape {
			return true
		
	}
	
	return false
}
