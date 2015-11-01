//
//  NSDate Extenstions.swift
//  Budget
//
//  Created by Nathan Mann on 3/27/15.
//  Copyright (c) 2015 Nate. All rights reserved.
//

import Foundation


extension NSDate {
    
    private var components: NSDateComponents {
        return NSCalendar.currentCalendar().components([.Era, .Year, .Month, .Weekday, .Day, .Hour, .Minute, .Second, .TimeZone], fromDate: self)
    }
    
    var era: Int {
        return components.era
    }
    
    var year: Int {
        return components.year
    }
    
    var month: Int {
        return components.month
    }
    
    var weekday: Int {
        return components.weekday
    }
    
    var day: Int {
        return components.day
    }
    
    var hour: Int {
        return components.hour
    }
    
    var minute: Int {
        return components.minute
    }
    
    var second: Int {
        return components.minute
    }
    
    var weekOfYear: Int {
        return components.weekOfYear
    }
    
    var weekOfMonth: Int {
        return components.weekOfMonth
    }
    
    var timeZone: NSTimeZone {
        return components.timeZone!
    }
    
    
    class func monthsBetween(date1 date1: NSDate, date2: NSDate) -> Int {
        return NSCalendar.currentCalendar().components(.Month, fromDate: date1, toDate: date2, options: NSCalendarOptions(rawValue: 0)).month
    }
    
    
    class func dateFromString(string: String, withDateFormat: String) -> NSDate? {
        return NSDateFormatter(dateFormat: withDateFormat).dateFromString(string)
    }
    
    
    func toString(dateFormat dateFormat: String) -> String {
        return NSDateFormatter(dateFormat: dateFormat).stringFromDate(self)
    }
    
    
    func toString(dateStyle dateStyle: NSDateFormatterStyle) -> String {
        return NSDateFormatter(dateStyle: dateStyle).stringFromDate(self)
    }
    
}