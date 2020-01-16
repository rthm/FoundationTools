//
//  DispatchQueue+Extensions.swift
//  
//
//  Created by rthmadmin on 2019-11-18.
//

import Foundation

public extension DispatchQueue {
    func future(_ interval: TimeInterval, closure: @escaping () -> Void) {
        let when: DispatchTime = .now() + interval
        asyncAfter(deadline: when, execute: closure)
    }
}
