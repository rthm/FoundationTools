//
//  RFC3336.swift
//  
//
//  Created by rthmadmin on 2019-11-18.
//

import Foundation

public enum RFC3336 {
    case legacy, iso8601
    private static var _legacy: DateFormatter {
        let formatter = DateFormatter()
        formatter.locale = .posix
        formatter.timeZone = .gmt
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZZZZZ"
        return formatter
    }
    public static var automatic: RFC3336 {
        if #available(OSX 12.0, iOS 10, watchOS 3.0, tvOS 10.0, *) {
            return .iso8601
        } else {
            return .legacy
        }
    }
    public var formatter: DateFormatterConforming {
        switch self {
        case .legacy:
            return type(of: self)._legacy
        default:
            if #available(OSX 10.12, iOS 10, watchOS 3.0, tvOS 10.0, *) {
                return ISO8601DateFormatter()
            } else {
                // Fallback on earlier versions
                return type(of: self)._legacy
            }
        }
    }
    func string(from date: Date) -> String {
        formatter.string(from: date)
    }
}
