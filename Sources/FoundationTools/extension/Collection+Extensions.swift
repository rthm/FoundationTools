//
//  Collection+Extensions.swift
//  
//
//  Created by rthmadmin on 2019-11-18.
//

import Foundation

public extension Collection where Element: BinaryFloatingPoint {
    private var _count: Element {
        .init(count)
    }
    var sum: Element {
        if isEmpty {
            return 0
        }
        return reduce(0, +)
    }
    var mean: Element {
        if isEmpty {
            return 0
        }
        return sum / _count
    }
    var stddev: Element {
        if isEmpty {
            return 0
        }
        let avg = mean
        let diffs = map{$0 - avg}
        let squaredDiffs = diffs.map{$0 * $0}
        let sumQqAvDiff = squaredDiffs.reduce(0, +)
        return sqrt(sumQqAvDiff / _count)
    }
}
