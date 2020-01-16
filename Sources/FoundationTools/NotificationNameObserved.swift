//
//  File.swift
//  
//
//  Created by rthmadmin on 2019-11-18.
//

import Foundation

open class NotificationNameObserved: NotificationNameObserving {
    public var observing: NoName {
        _observing
    }
    open var onObservation: ((Any?) -> Void)?
    private var observer: Any?
    deinit {
        guard let o = observer else { return }
        notificationCenter.removeObserver(o, name: observing, object: nil)
    }
    private let _observing: NoName
    public init(name: NoName) {
        _observing = name
    }
    public convenience init(name: NoName, queue: OperationQueue? = nil, observation: ((Any?) -> Void)? = nil) {
        self.init(name: name)
        onObservation = observation
        observer = notificationCenter.addObserver(forName: name, object: nil, queue: queue, using: observed)
    }
    public func observed(_ notification: Notification) {
        let name = notification.name
        switch name {
        case observing:
            onObservation?(notification.object)
        default:
            debugPrint("Notification \(name) observed")
        }
    }
}
