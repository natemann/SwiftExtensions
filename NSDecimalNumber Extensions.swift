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
    return lhs.subtracting(rhs)
}


public func +(lhs: NSDecimalNumber, rhs: NSDecimalNumber) -> NSDecimalNumber {
    return lhs.adding(rhs)
}

public func *(lhs: NSDecimalNumber, rhs: NSDecimalNumber) -> NSDecimalNumber {
    return lhs.multiplying(by: rhs)
}

public func /(lhs: NSDecimalNumber, rhs: NSDecimalNumber) -> NSDecimalNumber {
    return lhs.dividing(by: rhs)
}

public func ==(lhs: NSDecimalNumber, rhs: NSDecimalNumber) -> Bool {
    return lhs.compare(rhs) == .orderedSame
}

public func <(lhs: NSDecimalNumber, rhs: NSDecimalNumber) -> Bool {
    return lhs.compare(rhs) == .orderedAscending
}

public func >(lhs: NSDecimalNumber, rhs: NSDecimalNumber) -> Bool {
    return lhs.compare(rhs) == .orderedDescending
}

public func ^(lhs: NSDecimalNumber, rhs: Int) -> NSDecimalNumber {
    return lhs.raising(toPower: rhs)
}

public func +=(lhs: inout NSDecimalNumber, rhs: NSDecimalNumber) {
    lhs = lhs + rhs
}

public func /=(lhs: inout NSDecimalNumber, rhs: NSDecimalNumber)  {
    lhs = lhs / rhs
}

public func *=(lhs: inout NSDecimalNumber, rhs: NSDecimalNumber) {
    lhs = lhs * rhs
}

public func -=(lhs: inout NSDecimalNumber, rhs: NSDecimalNumber) {
    lhs = lhs - rhs
}
