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
        let input = stringForFile("DotStringsTest", type: "txt")!
        let stream = Stream(input)
        self.measure {
            let _ = try! parser._run(stream)
        }
    }
    
    func testPlistPerformanceForComparison() {
        
        let data = dataForFile("DotStringsTest", type: "txt")!
        self.measure {
             let _ = try! PropertyListSerialization.propertyList(from: data, format: nil)
        }
    }
}
