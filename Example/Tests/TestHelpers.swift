//
//  TestHelpers.swift
//  Sparse
//
//  Created by John Morgan on 11/12/2016.
//  Copyright © 2016 CocoaPods. All rights reserved.
//

import Foundation

func dataForFile(_ filename: String, type: String?) -> Data? {
    
    let bundle = Bundle(for: DotStringsSpec.self)
    if let url = bundle.url(forResource: filename, withExtension: type) {
        return try! Data(contentsOf: url)
    }
    return nil
}

func stringForFile(_ filename: String, type: String?) -> String? {
    
    let bundle = Bundle(for: DotStringsSpec.self)
    if let url = bundle.url(forResource: filename, withExtension: type) {
        return try! String(contentsOf: url)
    }
    return nil
}

import Sparse

extension DotStringsEntry: Equatable {
    
    public static func ==(lhs: DotStringsEntry, rhs: DotStringsEntry) -> Bool {
        return lhs.key == rhs.key
            && lhs.translation == rhs.translation
            && lhs.comments == rhs.comments
    }
}
