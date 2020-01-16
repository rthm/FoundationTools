//
//  KeyValueObservationObject.swift
//  
//
//  Created by rthmadmin on 2019-11-18.
//

import Foundation

open class KeyValueObservationObject: NSObject {
    public var observation: NSKeyValueObservation? {
        didSet {
            oldValue?.invalidate()
        }
    }
    deinit {
        observation?.invalidate()
    }
}
