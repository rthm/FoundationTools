//
//  DateComponents+Extensions.swift
//  
//
//  Created by rthmadmin on 2019-11-18.
//

import Foundation

public extension DateComponents {
    static var daily: DateComponents {
        .init(calendar: nil, timeZone: nil, era: nil, year: nil, month: nil, day: 1, hour: nil, minute: nil, second: nil, nanosecond: nil, weekday: nil, weekdayOrdinal: nil, quarter: nil, weekOfMonth: nil, weekOfYear: nil, yearForWeekOfYear: nil)
    }
    static func createFromSeconds(_ seconds: Int) -> DateComponents {
        .init(calendar: nil, timeZone: nil, era: nil, year: nil, month: nil, day: nil, hour: nil, minute: nil, second: seconds, nanosecond: nil, weekday: nil, weekdayOrdinal: nil, quarter: nil, weekOfMonth: nil, weekOfYear: nil, yearForWeekOfYear: nil)
    }
    static func createFromHour(_ hours: Int, minutes: Int, onWeekday weekday: Int? = nil) -> DateComponents {
        .init(calendar: nil, timeZone: nil, era: nil, year: nil, month: nil, day: nil, hour: hours, minute: minutes, second: nil, nanosecond: nil, weekday: weekday, weekdayOrdinal: nil, quarter: nil, weekOfMonth: nil, weekOfYear: nil, yearForWeekOfYear: nil)
    }
}
