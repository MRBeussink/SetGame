import Foundation
import SetGame

extension CardContent: Hashable {
	public func hash(into hasher: inout Hasher) {
		hasher.combine(color)
		hasher.combine(shape)
		hasher.combine(shading)
		hasher.combine(shapeCount)
	}
}

