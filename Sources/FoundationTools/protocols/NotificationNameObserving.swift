//
//  NotificationNameObserving.swift
//  
//
//  Created by rthmadmin on 2019-11-18.
//

import Foundation

public protocol NotificationNameObserving: NotificationCenterNotificationObserving {
    typealias NoName = Notification.Name
}
