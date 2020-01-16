//
//  File.swift
//
//
//  Created by rthmadmin on 2019-11-18.
//

import Foundation

public extension String {
    static var keyIsTrueFormatter: String {
        return "%K = YES"
    }
    static var keyIsNotTrueFormatter: String {
        return "%K != YES"
    }
    static var regExMatchFormatter: String {
        "SELF MATCHES %@"
    }
    var isValidEmail: Bool {
        let predicate: NSPredicate = .regExMatch
        return predicate.evaluate(with: self)
    }
}
