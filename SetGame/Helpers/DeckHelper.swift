import Foundation

func addColorTo(cardBuilders builders: [CardBuilder]) -> [CardBuilder] {
	let redBuilders = builders.map {
		$0.with {
			$0.color = .red
		}
	}
	let greenBuilders = builders.map {
		$0.with {
			$0.color = .green
		}
	}
	let purpleBuilders = builders.map {
		$0.with {
			$0.color = .purple
		}
	}
	
	return redBuilders + greenBuilders + purpleBuilders
}


func addShapeTo(cardBuilders builders: [CardBuilder]) -> [CardBuilder] {
	let diamondBuilders = builders.map {
		$0.with {
			$0.shape = .diamond
		}
	}
	let squiggleBuilders = builders.map {
		$0.with {
			$0.shape = .squiggle
		}
	}
	let ovalBuilders = builders.map {
		$0.with {
			$0.shape = .oval
		}
	}
	
	return diamondBuilders + squiggleBuilders + ovalBuilders
}


func addShadingTo(cardBuilders builders: [CardBuilder]) -> [CardBuilder] {
	let solidBuilders = builders.map {
		$0.with {
			$0.shading = .solid
		}
	}
	let strippedBuilders = builders.map {
		$0.with {
			$0.shading = .stripped
		}
	}
	let openBuilders = builders.map {
		$0.with {
			$0.shading = .open
		}
	}
	
	return solidBuilders + strippedBuilders + openBuilders
}

func addCountTo(cardBuilders builders: [CardBuilder]) -> [CardBuilder] {
	let oneBuilders = builders.map {
		$0.with {
			$0.shapeCount = 1
		}
	}
	let twoBuilders = builders.map {
		$0.with {
			$0.shapeCount = 2
		}
	}
	let threeBuilders = builders.map {
		$0.with {
			$0.shapeCount = 3
		}
	}
	
	return oneBuilders + twoBuilders + threeBuilders
}
