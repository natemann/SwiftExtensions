//
//  NSDate Extenstions.swift
//  Budget
//
//  Created by Nathan Mann on 3/27/15.
//  Copyright (c) 2015 Nate. All rights reserved.
//

import Foundation


extension Date {
    
    fileprivate var components: DateComponents {
        return (Calendar.current as NSCalendar).components([.era, .year, .month, .weekday, .day, .hour, .minute, .second, .timeZone], from: self)
    }
    
    var era: Int {
        return components.era!
    }
    
    var year: Int {
        return components.year!
    }
    
    var month: Int {
        return components.month!
    }
    
    var weekday: Int {
        return components.weekday!
    }
    
    var day: Int {
        return components.day!
    }
    
    var hour: Int {
        return components.hour!
    }
    
    var minute: Int {
        return components.minute!
    }
    
    var second: Int {
        return components.minute!
    }
    
    var weekOfYear: Int {
        return components.weekOfYear!
    }
    
    var weekOfMonth: Int {
        return components.weekOfMonth!
    }
    
    var timeZone: TimeZone {
        return (components as NSDateComponents).timeZone!
    }
    
    
    static func monthsBetween(date1: Date, date2: Date) -> Int {
        return (Calendar.current as NSCalendar).components(.month, from: date1, to: date2, options: NSCalendar.Options(rawValue: 0)).month!
    }
    
    
    static func dateFromString(_ string: String, withDateFormat: String) -> Date? {
        
        return DateFormatter(dateFormat: withDateFormat).date(from: string)
    }
    
    
    func toString(dateFormat: String) -> String {
        return DateFormatter(dateFormat: dateFormat).string(from: self)
    }
    
    
    func toString(dateStyle: DateFormatter.Style) -> String {
        return DateFormatter(dateStyle: dateStyle).string(from: self)
    }
    
}
