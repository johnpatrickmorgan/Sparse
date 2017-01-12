//
//  CSVTests.swift
//  Sparse
//
//  Created by John Morgan on 14/12/2016.
//  Copyright © 2016 CocoaPods. All rights reserved.
//

import Foundation
import Quick
import Nimble
@testable import Sparse

class CSVSpec: QuickSpec {
    
    override func spec() {
        
        describe("the cell parser") {
            
            let parser = CSVParser.cell
            
            it("should parse an unquoted cell as expected") {
                let input = "a simple cell"
                let stream = Stream(input)
                if let output = shouldNotThrow({ try parser._run(stream) }) {
                    expect(output).to(equal("a simple cell"))
                }
            }
            it("should parse a quoted cell as expected") {
                let input = "\"a simple cell\""
                let stream = Stream(input)
                if let output = shouldNotThrow({ try parser._run(stream) }) {
                    expect(output).to(equal("a simple cell"))
                }
            }
            it("should parse a quoted cell with escapes as expected") {
                let input = "\"a \"\"simple\"\" cell\""
                let stream = Stream(input)
                if let output = shouldNotThrow({ try parser._run(stream) }) {
                    expect(output).to(equal("a \"simple\" cell"))
                }
            }
        }
        describe("the line parser") {
            
            let parser = CSVParser.line
            
            it("should parse unquoted cells as expected") {
                let input = "one cell,another"
                let stream = Stream(input)
                if let output = shouldNotThrow({ try parser._run(stream) }) {
                    expect(output).to(equal(["one cell","another"]))
                }
            }
            it("should parse quoted cells as expected") {
                let input = "\"one cell\",\"another\""
                let stream = Stream(input)
                if let output = shouldNotThrow({ try parser._run(stream) }) {
                    expect(output).to(equal(["one cell","another"]))
                }
            }
            it("should quoted cells with escapes as expected") {
                let input = "\"one \"\"cell\"\"\",\"\"\"and\"\" another\""
                let stream = Stream(input)
                if let output = shouldNotThrow({ try parser._run(stream) }) {
                    expect(output).to(equal(["one \"cell\"","\"and\" another"]))
                }
            }
        }
        
        describe("the csv parser") {
            
            let parser = CSVParser.csv
            
            it("should parse the test file as expected") {
                let input = stringForFile("CSVTest", type: "csv")!
                let stream = Stream(input)
                if let output = shouldNotThrow({ try parser._run(stream) }) {
                    for r in 1...8 {
                        for c in 1...8 {
                            expect(output[r-1][c-1]).to(equal("r\(r)c\(c)"))
                        }
                    }
                }
            }
        }
    }
}
