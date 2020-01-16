//
//  Timezone+Extensions.swift
//  
//
//  Created by rthmadmin on 2019-11-18.
//

import Foundation

public extension TimeZone {
    static var gmt: TimeZone {
        TimeZone(secondsFromGMT: 0)!
    }
}
