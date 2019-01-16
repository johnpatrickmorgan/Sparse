//
//  CSVPerformance.swift
//  Sparse
//
//  Created by John Morgan on 15/12/2016.
//  Copyright © 2016 CocoaPods. All rights reserved.
//

import XCTest
@testable import Sparse

class CSVParserPerformance: XCTestCase {
    
    func testCSVParserPerformance() {
        
        let parser = CSVParser.csv
        let input = stringForFile("CSVTest", type: "csv")!
        let stream = Stream(input)
        self.measure {
            let _ = try! parser.parse(stream)
        }
    }
}
