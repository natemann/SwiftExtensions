//
//  String Extenstions.swift
//  InTheBlack
//
//  Created by Nathan Mann on 11/24/15.
//  Copyright © 2015 Nathan Mann. All rights reserved.
//

import UIKit

extension String {
    
    func trimWhiteSpace() -> String {
        return self.trimmingCharacters(in: .whitespacesAndNewlines)
    }

    func trimNewLines() -> String {
        return self.trimmingCharacters(in: .newlines)
    }


    func trimCharactersFromFront(_ characters: [Character]) -> String {
        var startingIndex: Index = self.startIndex
        for letter in self.characters {
            if characters.contains(letter) {
                startingIndex = self.index(startingIndex, offsetBy: 1)
            }
            else {
                break;
            }
        }
        return self.substring(from: startingIndex)
    }


    func trimCharactersFromEnd(_ characters: [Character]) -> String {
        var endingIndex: Index = self.endIndex
        for letter in self.characters.reversed() {
            if characters.contains(letter) {
                endingIndex = self.index(endingIndex, offsetBy: -1)
            }
            else {
                break;
            }
        }
        return self.substring(to: endingIndex)
    }
    
}
