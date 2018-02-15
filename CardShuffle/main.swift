//
//  main.swift
//  CardShuffle
//
//  Created by Phil Cole on 2/13/18.
//  Copyright © 2018 Phil. All rights reserved.
//

import Foundation



if CommandLine.argc < 2 {
	let shuffle = CardShuffle()
	shuffle.interactiveMode()
} else {
	let numberOfCards = Config.numberOfCards(commandLine: CommandLine.arguments)
	let shuffle = CardShuffle(numberOfCards)
	shuffle.run()
}




