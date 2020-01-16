//
//  Data+Extensions.swift
//  
//
//  Created by rthmadmin on 2019-11-18.
//

import CommonCrypto
import Foundation

public extension Data {
    var md5: [UInt8] {
        withUnsafeBytes { (pointer) -> [UInt8] in
            guard let pt = pointer.baseAddress else { return [] }
            var hash: [UInt8] = [UInt8](repeating: 0, count: Int(CC_MD5_DIGEST_LENGTH))
            CC_MD5(pt, CC_LONG(count), &hash)
            return hash
        }
    }
    var sha256: [UInt8] {
        withUnsafeBytes { (pointer) -> [UInt8] in
            guard let pt = pointer.baseAddress else { return [] }
            var hash: [UInt8] = [UInt8](repeating: 0, count: Int(CC_SHA256_DIGEST_LENGTH))
            CC_SHA256(pt, CC_LONG(count), &hash)
            return hash
        }
    }
}
