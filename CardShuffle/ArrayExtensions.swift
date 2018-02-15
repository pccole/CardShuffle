//
//  ArrayExtensions.swift
//  CardShuffle
//
//  Created by Phil Cole on 2/14/18.
//  Copyright © 2018 Phil. All rights reserved.
//

import Foundation

extension Array where Element == Card {
	func isEqual(_ to:[Card]) -> Bool {
		for (index, card) in enumerated() where card.id != to[index].id {
			return false
		}
		return true
	}
}
