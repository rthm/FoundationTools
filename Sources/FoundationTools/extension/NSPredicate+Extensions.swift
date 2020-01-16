//
//  NSPredicate+Extensions.swift
//  
//
//  Created by rthmadmin on 2019-11-18.
//

import Foundation

public extension NSPredicate {
    private static var emailRegEx: String {
        "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
    }
    static func keyIsTrue(_ key: String) -> NSPredicate {
        return .init(format: .keyIsTrueFormatter, key)
    }
    static func keyIsNotTrue(_ key: String) -> NSPredicate {
        return .init(format: .keyIsNotTrueFormatter, key)
    }
    static var regExMatch: NSPredicate { NSPredicate(format: .regExMatchFormatter, Self.emailRegEx) }
}
