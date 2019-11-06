//
//  StringsParserPerformance.swift
//  Sparse
//
//  Created by John Morgan on 11/12/2016.
//  Copyright © 2016 CocoaPods. All rights reserved.
//

import XCTest
@testable import Sparse

class DotStringsParserPerformance: XCTestCase {
    
    func testDotStringsParserPerformance() {
        
        let parser = DotStringsParser.stringsParser
        let input = dotStringsExample
        let stream = Stream(input)
        self.measure {
            let _ = try! parser.parse(stream)
        }
    }
    
    func testPlistPerformanceForComparison() {
        
        let data = dotStringsExample.data(using: .utf8)!
        self.measure {
             let _ = try! PropertyListSerialization.propertyList(from: data, format: nil)
        }
    }
}
