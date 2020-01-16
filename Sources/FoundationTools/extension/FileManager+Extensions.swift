//
//  File.swift
//  
//
//  Created by rthmadmin on 2019-11-18.
//

import Foundation

public extension FileManager {
    func silentRmFile(atUrl url: URL) throws {
        let path = url.path
        guard
            fileExists(atPath: path),
            isDeletableFile(atPath: path)
            else { return }
        try removeItem(at: url)
    }
}
