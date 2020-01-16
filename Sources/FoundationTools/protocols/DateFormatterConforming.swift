//
//  File.swift
//  
//
//  Created by rthmadmin on 2019-11-18.
//

import Foundation

public protocol DateFormatterConforming {
    func string(from date: Date) -> String
}

extension DateFormatter: DateFormatterConforming {}

@available(OSX 12.0, iOS 10, watchOS 3.0, tvOS 10.0, *)
extension ISO8601DateFormatter: DateFormatterConforming {}
