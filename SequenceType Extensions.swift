//
//  SequenceType Extensions.swift
//  InTheBlack
//
//  Created by Nathan Mann on 9/5/15.
//  Copyright © 2015 Nathan Mann. All rights reserved.
//

import Foundation


extension SequenceType where Generator.Element : Hashable {
    
    func unique() -> [Generator.Element] {
        var set: Set<Generator.Element> = []
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