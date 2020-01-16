//
//  Progress+Extensions.swift
//  
//
//  Created by rthmadmin on 2019-11-18.
//

import Foundation

public extension Progress {
    var remainingUnitCount: Int64 {
        return totalUnitCount - completedUnitCount
    }
}
