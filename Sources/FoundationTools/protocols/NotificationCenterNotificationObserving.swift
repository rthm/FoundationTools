//
//  NotificationCenterNotificationObserving.swift
//  
//
//  Created by rthmadmin on 2019-11-18.
//

import Foundation

public protocol NotificationCenterNotificationObserving: class {
    var notificationCenter: NotificationCenter { get }
    var onObservation: ((Any?) -> Void)? { get set }
    func observed(_ notification: Notification)
}

extension NotificationCenterNotificationObserving {
    public var notificationCenter: NotificationCenter { .default }
}
