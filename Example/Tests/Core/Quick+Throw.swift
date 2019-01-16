//
//  QuickSpec+Throw.swift
//  Sparse
//
//  Created by John Morgan on 07/12/2016.
//  Copyright © 2016 CocoaPods. All rights reserved.
//

import Foundation
import Quick
import Nimble

@discardableResult func shouldNotThrow<O>(file: FileString = #file, line: UInt = #line, _ closure: () throws -> O) -> O? {
    
    do {
        return try closure()
    } catch {
        fail("Call threw: \(error)", file: file, line: line)
        return nil
    }
}

@discardableResult func shouldThrow<O>(file: FileString = #file, line: UInt = #line, _ closure: () throws -> O) -> Error? {
    
    do {
        let output = try closure()
        fail("Call did not throw any error, returned \(output)", file: file, line: line)
        return nil
    } catch {
        return error
    }
}
