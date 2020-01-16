//
//  Date+Extensions.swift
//  
//
//  Created by rthmadmin on 2019-11-18.
//

import Foundation

private let iso8601: DateFormatterConforming = RFC3336.automatic.formatter

public extension Date {
    private var calendar: Calendar {
        .current
    }
    var microseconds: TimeInterval {
        timeIntervalSince1970 * 1_000_000
    }
    var posix: String {
        iso8601.string(from: self)
    }
    var endOfDay: Date {
        self.set(23, minute: 59, second: 59)
    }
    var startOfDay: Date {
        calendar.startOfDay(for: self)
    }
    func add(_ unit: Calendar.Component, value: Int) -> Date {
        guard let date = calendar.date(byAdding: unit, value: value, to: self) else { return self }
        return date
    }
    func set(_ hour: Int, minute: Int, second: Int, direction: Calendar.SearchDirection = .forward) -> Date {
        guard let dt = calendar.date(bySettingHour: hour, minute: minute, second: second, of: startOfDay, direction: direction) else { return self }
        return dt
    }
}
