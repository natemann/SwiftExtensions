//
//  SequenceType Extensions.swift
//  InTheBlack
//
//  Created by Nathan Mann on 9/5/15.
//  Copyright © 2015 Nathan Mann. All rights reserved.
//

import Foundation


extension Sequence where Iterator.Element : Hashable {
    
    func unique() -> [Iterator.Element] {
        var set: Set<Iterator.Element> = []
        return self.filter {
            if set.contains($0) {
                return false
            }
            else {
                set.insert($0)
                return true
            }
        }
    }
    
}
