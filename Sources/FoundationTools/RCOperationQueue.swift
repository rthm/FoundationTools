//
//  RCOperationQueue.swift
//  
//
//  Created by rthmadmin on 2019-11-18.
//

import os.log
import Foundation

open class RCOperationQueue: KeyValueObservationObject, OperationQueueParameter {
    open var label: String { "io.rthm" }
    open var qos: QualityOfService { .default }
    open var queueName: String { [label, "opqueue"].joined(separator: ".") }
    open var maxConcurrentOperationCount: Int = 1 {
        didSet {
            let capture = maxConcurrentOperationCount
            if _queue.maxConcurrentOperationCount == capture {
                return
            }
            _queue.maxConcurrentOperationCount = capture
        }
    }
    public var dispatchQueue: DispatchQueue? {
        didSet {
            _queue.underlyingQueue = dispatchQueue
        }
    }
    public var queue: OperationQueue { _queue }
    private let _queue: OperationQueue
    public override init() {
        _queue = .init()
        super.init()
        _queue.name = queueName
        _queue.maxConcurrentOperationCount = maxConcurrentOperationCount
        _queue.qualityOfService = qos
    }
    @discardableResult
    public func addOperation<O: Operation>(_ op: O) -> O {
        _queue.addOperation(op)
        return op
    }
    public func operationChanged(_ q: Queue) {
        let count = q.operationCount,
        format: String = NSLocalizedString("%d operation(s) remaining", comment: ""),
        text: String = .init(format: format, count)
        if #available(OSX 10.14, iOS 12.0, watchOS 5.0, tvOS 12.0, *) {
            os_log(.debug, log: log, "%@", text)
        } else {
            // Fallback on earlier versions
            debugPrint(text)
        }
    }
}
