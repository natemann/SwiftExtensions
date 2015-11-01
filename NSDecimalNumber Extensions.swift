//
//  NSNumber Extensions.swift
//  InTheBlack
//
//  Created by Nathan Mann on 9/2/15.
//  Copyright © 2015 Nathan Mann. All rights reserved.
//

import Foundation

extension NSDecimalNumber {
    
    func toDouble() -> Double {
        return self.doubleValue
    }
}


public func -(lhs: NSDecimalNumber, rhs: NSDecimalNumber) -> NSDecimalNumber {
    return lhs.decimalNumberBySubtracting(rhs)
}


public func +(lhs: NSDecimalNumber, rhs: NSDecimalNumber) -> NSDecimalNumber {
    return lhs.decimalNumberByAdding(rhs)
}

public func *(lhs: NSDecimalNumber, rhs: NSDecimalNumber) -> NSDecimalNumber {
    return lhs.decimalNumberByMultiplyingBy(rhs)
}

public func /(lhs: NSDecimalNumber, rhs: NSDecimalNumber) -> NSDecimalNumber {
    return lhs.decimalNumberByDividingBy(rhs)
}

public func ==(lhs: NSDecimalNumber, rhs: NSDecimalNumber) -> Bool {
    return lhs.compare(rhs) == .OrderedSame
}

public func <(lhs: NSDecimalNumber, rhs: NSDecimalNumber) -> Bool {
    return lhs.compare(rhs) == .OrderedAscending
}

public func >(lhs: NSDecimalNumber, rhs: NSDecimalNumber) -> Bool {
    return lhs.compare(rhs) == .OrderedDescending
}

public func ^(lhs: NSDecimalNumber, rhs: Int) -> NSDecimalNumber {
    return lhs.decimalNumberByRaisingToPower(rhs)
}

public func +=(inout lhs: NSDecimalNumber, rhs: NSDecimalNumber) {
    lhs = lhs + rhs
}

public func /=(inout lhs: NSDecimalNumber, rhs: NSDecimalNumber)  {
    lhs = lhs / rhs
}

public func *=(inout lhs: NSDecimalNumber, rhs: NSDecimalNumber) {
    lhs = lhs * rhs
}

public func -=(inout lhs: NSDecimalNumber, rhs: NSDecimalNumber) {
    lhs = lhs - rhs
}