//
//  ConsoleIO.swift
//  CardShuffle
//
//  Created by Phil Cole on 2/13/18.
//  Copyright © 2018 Phil. All rights reserved.
//

import Foundation

enum OutputType {
	case error
	case standard
}

class ConsoleIO {
	static func writeMessage(_ message: String, to: OutputType = .standard) {
		switch to {
		case .standard:
			print(message)
		case .error:
			fputs("Error: \(message)", stderr)
		}
	}
	
	static func getInput() -> String {
		let data = FileHandle.standardInput.availableData
		let string = String(data: data, encoding: .utf8)!
		return string.trimmingCharacters(in: .newlines)
	}
}
