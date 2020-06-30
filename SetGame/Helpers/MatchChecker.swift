import Foundation

func check(cards: [Card]) -> Bool {
	if !checkColor(cards: cards) {
		return false
	}
	return true
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
