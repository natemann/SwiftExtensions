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
        return self.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
    }
    
    
    func trimCharactersFromFront(characters: [Character]) -> String {
        var startingIndex: Index = self.startIndex
        for letter in self.characters {
            if characters.contains(letter) {
                startingIndex = startingIndex.advancedBy(1)
            }
            else {
                break;
            }
        }
        return self.substringFromIndex(startingIndex)
    }
    
    
    func trimCharactersFromEnd(characters: [Character]) -> String {
        var endingIndex: Index = self.endIndex
        for letter in self.characters.reverse() {
            if characters.contains(letter) {
                endingIndex = endingIndex.advancedBy(-1)
            }
            else {
                break;
            }
        }
        return self.substringToIndex(endingIndex)
    }
    
}
