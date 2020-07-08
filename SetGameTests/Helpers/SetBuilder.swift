//
//  SetBuilder.swift
//  SetGameTests
//
//  Created by Mark Beussink on 7/2/20.
//  Copyright © 2020 Mark Beussink. All rights reserved.
//

import Foundation
@testable import SetGame

enum CardMatch {
	case same
	case mismatch
	case different
}

func cardSet(withColors colorMatch: CardMatch, withShapes shapeMatch: CardMatch) -> [Card] {
	let cardsWithColors = cardSet(withColors: colorMatch)
	let cardsWithShapes = cardSet(from: cardsWithColors, withShapes: shapeMatch)
	return cardsWithShapes.map { $0.build() }
}

private func cardSet(withColors colorMatch: CardMatch) -> [CardBuilder] {
	switch colorMatch {
	case .same:
		return Array(repeating: CardBuilder().with{$0.color = .red}, count: 3)
	case .mismatch:
		return [CardBuilder().with{$0.color = .red},
				CardBuilder().with{$0.color = .green},
				CardBuilder().with{$0.color = .green} ]
	case .different:
		return [CardBuilder().with{$0.color = .red},
				CardBuilder().with{$0.color = .green},
				CardBuilder().with{$0.color = .purple} ]
	}
}

private func cardSet(from builders: [CardBuilder], withShapes shapeMatch: CardMatch) -> [CardBuilder] {
	switch shapeMatch {
	case .same:
		return builders.map { builder in
			return builder.with{ $0.shape = .diamond }
		}
	case .mismatch:
		var newBuilders = [CardBuilder]()
		let shapes: [CardShape] = [.diamond, .diamond, .oval]
		for i in 0..<builders.count {
			newBuilders.append(builders[i].with{ $0.shape = shapes[i] })
		}
		return newBuilders
	case .different:
		var newBuilders = [CardBuilder]()
		let shapes: [CardShape] = [.diamond, .oval, .squiggle]
		for i in 0..<builders.count {
			newBuilders.append(builders[i].with{ $0.shape = shapes[i] })
		}
		return newBuilders
	}
}
