//
//  CollectionType Extensions.swift
//  InTheBlack
//
//  Created by Nathan Mann on 9/5/15.
//  Copyright © 2015 Nathan Mann. All rights reserved.
//

import Foundation


extension Collection where Index: Comparable {
    subscript (maybe index: Index) -> Iterator.Element? {
        guard startIndex <= index && index < endIndex else {
            return nil
        }
        return self[index]
    }
}
