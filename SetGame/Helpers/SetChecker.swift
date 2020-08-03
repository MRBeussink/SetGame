import Foundation

func isMatchingSet(cards: [CardContent]) -> Bool {
	return checkColor(cards: cards)
		&& checkShape(cards: cards)
		&& checkShading(cards: cards)
		&& checkShapeCount(cards: cards)
}

private func checkColor(cards: [CardContent]) -> Bool {
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

private func checkShape(cards: [CardContent]) -> Bool {
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

private func checkShading(cards: [CardContent]) -> Bool {
	if cards[0].shading == cards[1].shading
		&& cards[0].shading == cards[2].shading
		&& cards[1].shading == cards[2].shading {
		return true
	} else if  cards[0].shading != cards[1].shading
		&& cards[0].shading != cards[2].shading
		&& cards[1].shading != cards[2].shading {
		return true
		
	}
	
	return false
}

private func checkShapeCount(cards: [CardContent]) -> Bool {
	if cards[0].shapeCount == cards[1].shapeCount
		&& cards[0].shapeCount == cards[2].shapeCount
		&& cards[1].shapeCount == cards[2].shapeCount {
		return true
	} else if  cards[0].shapeCount != cards[1].shapeCount
		&& cards[0].shapeCount != cards[2].shapeCount
		&& cards[1].shapeCount != cards[2].shapeCount {
		return true
		
	}
	
	return false
}
