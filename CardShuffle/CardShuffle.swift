//
//  CardShuffle.swift
//  CardShuffle
//
//  Created by Phil Cole on 2/14/18.
//  Copyright © 2018 Phil. All rights reserved.
//

import Foundation

class CardShuffle {
	
	private var cardArray:[Card] = []
	
	private var shuffleArray:[Card] = []
	
	private var numberOfRounds:Int = 0
	
	init() { }
	
	init(_ numberOfCards:Int) {
		initialize(numberOfCards)
	}
	
	private func initialize(_ numberOfCards:Int) {
		var array = [Card]()
		array.reserveCapacity(numberOfCards)
		for index in 0 ..< numberOfCards {
			let card = Card(id: index)
			array.append(card)
		}
		cardArray = array
		shuffleArray = array
	}
	
	func interactiveMode() {
		let instructions =
		"""
		Welcome to Card Shuffle.
		The problem description is as follows:
		You are given a deck containing n cards.  While holding the deck:

		1. Take the top card off the deck and set it on the table
		2. Take the next card off the top and put it on the bottom of the deck in your hand.
		3. Continue steps 1 and 2 until all cards are on the table.  This is a round.
		4. Pick up the deck from the table and repeat steps 1-3 until the deck is in the original order.

		Enter the number of cards:

		"""
		ConsoleIO.writeMessage(instructions)
		let input = ConsoleIO.getInput()
		let numberOfCards = Config.numberOfCards(input)
		initialize(numberOfCards)
		run()
	}
	
	func run() {
		var tableArray = [Card]()
		var bottomOfTheDeckArray = [Card]()
		repeat {
			for (index, card) in shuffleArray.enumerated() {
				if index % 2 == 0 {
					tableArray.append(card)
				} else {
					bottomOfTheDeckArray.append(card)
				}
			}
			shuffleArray = bottomOfTheDeckArray
			bottomOfTheDeckArray.removeAll()
		} while (!shuffleArray.isEmpty)
		if cardArray.isEqual(tableArray) {
			let output = "Number of Rounds: \(numberOfRounds)"
			ConsoleIO.writeMessage(output)
		} else {
			shuffleArray = tableArray
			numberOfRounds += 1
			run()
		}
	}
}
