//
//  File.swift
//  InTheBlack
//
//  Created by Nathan Mann on 5/14/15.
//  Copyright (c) 2015 Nathan Mann. All rights reserved.
//

import Foundation
import UIKit

extension UILabel {
    
    convenience init(text: String?, font: UIFont?, textColor: UIColor?, backgroundColor: UIColor?, textAlignment: NSTextAlignment? ) {
        self.init()
        
        self.text = text
        self.backgroundColor = backgroundColor
        
        if let font = font {
            self.font = font
        }
        
        if let textColor = textColor {
            self.textColor = textColor
        }
        
        if let textAlignment = textAlignment {
            self.textAlignment = textAlignment
        }
    }
    

    convenience init(font: UIFont, numberOfLines: Int = 0, lineBreakMode: NSLineBreakMode = .byWordWrapping) {
        self.init()
        self.font = font
        self.numberOfLines = numberOfLines
        self.lineBreakMode = lineBreakMode
    }
    
}
