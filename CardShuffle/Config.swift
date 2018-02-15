//
//  Config.swift
//  CardShuffle
//
//  Created by Phil Cole on 2/14/18.
//  Copyright © 2018 Phil. All rights reserved.
//

import Foundation

class Config {
	
	static let totalArgumentCount = 2
	
	static func numberOfCards(commandLine arguments:[String]) -> Int {
		guard arguments.count == totalArgumentCount else {
			ConsoleIO.writeMessage("Please provide only one argument: the number of cards\n", to: .error)
			exit(0)
		}
		
		let numberOfCardsArg = arguments[1]
		
		let number = numberOfCards(numberOfCardsArg)
		
		return number
	}
	
	static func numberOfCards(_ arg:String) -> Int {
		guard let number = Int(arg) else {
			ConsoleIO.writeMessage("Could not convert number of cards arguement to an Int\n", to: .error)
			exit(0)
		}
		
		guard number > 2 else {
			ConsoleIO.writeMessage("Card number argument must be greater than 2\n", to: .error)
			exit(0)
		}
		return number
	}
	
}


