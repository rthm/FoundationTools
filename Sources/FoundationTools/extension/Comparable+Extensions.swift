//
//  Comparable+Extensions.swift
//  
//
//  Created by rthmadmin on 2019-11-18.
//

public extension Comparable {
    func clamp(lower: Self, upper: Self) -> Self {
        min(max(self, lower), upper)
    }
    func clamp(_ range: ClosedRange<Self>) -> Self {
        clamp(lower: range.lowerBound, upper: range.upperBound)
    }
}
