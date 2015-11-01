//
//  NSDateFormatter Extensions.swift
//  InTheBlack
//
//  Created by Nathan Mann on 9/2/15.
//  Copyright © 2015 Nathan Mann. All rights reserved.
//

import Foundation

extension NSDateFormatter {
    
    convenience init(dateFormat: String) {
        self.init()
        self.dateFormat = dateFormat
    }
    
    
    convenience init(dateStyle: NSDateFormatterStyle) {
        self.init()
        self.dateStyle = dateStyle
    }
    
}