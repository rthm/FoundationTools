//
//  OperationQueueParameter.swift
//  
//
//  Created by rthmadmin on 2019-11-18.
//

import os.log
import Foundation

public protocol OperationQueueParameter: class {
    typealias Queue = OperationQueue
    var label: String { get }
    @available(OSX 10.14, iOS 12.0, watchOS 5.0, tvOS 12.0, *)
    var log: OSLog { get }
    var qos: QualityOfService { get }
    var queueName: String { get }
    var maxConcurrentOperationCount: Int { get set }
    var dispatchQueue: DispatchQueue? { get set }
    var queue: OperationQueue { get }
    func operationChanged(_ q: Queue)
}

@available(OSX 10.14, iOS 12.0, watchOS 5.0, tvOS 12.0, *)
extension OperationQueueParameter {
    public var log: OSLog {
        .init(subsystem: queueName, category: "FoundationTools")
    }
}
