//
//  Array+Extensions.swift
//  
//
//  Created by rthmadmin on 2019-11-18.
//

import Foundation

public extension Array where Element: UnsignedInteger {
    var hex: String {
        map({String($0, radix: 16, uppercase: false)}).joined()
    }
}

extension Data {
    
}
