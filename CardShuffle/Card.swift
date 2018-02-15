//
//  Card.swift
//  CardShuffle
//
//  Created by Phil Cole on 2/13/18.
//  Copyright © 2018 Phil. All rights reserved.
//

import Foundation

struct Card {
	let id: Int
}

extension Card:Equatable { }

func ==(lhs: Card, rhs: Card) -> Bool {
	return lhs.id == rhs.id
}

extension Card: CustomStringConvertible {
	var description: String {
		return "\(id)"
	}
}
