//
//  DotStringsTests.swift
//  Sparse
//
//  Created by John Morgan on 03/12/2016.
//  Copyright © 2016 CocoaPods. All rights reserved.
//

import Foundation
import Quick
import Nimble
@testable import Sparse

class DotStringsSpec: QuickSpec {
    
    override func spec() {
        
        describe("the DotStrings parser") {
            
            let parser = DotStringsParser.stringsParser
            
            it("should produce the same output as plist serialization") {
                let input = dotStringsExample
                let stream = Stream(input)
                let data = input.data(using: .utf8)!
                if let output = shouldNotThrow({ try parser.parse(stream) }),
                    let plist = shouldNotThrow({ try PropertyListSerialization.propertyList(from: data, format: nil)}) as? [String: String] {
                    var dict = [String : String]()
                    for entry in output {
                        dict[entry.key] = entry.translation
                    }
                    expect(dict).to(equal(plist))
                }
            }
        }
        describe("the kvp parser") {
            
            let parser = DotStringsParser.kvp
            it("should correctly parse an uncommented key-value pair") {
                
                let input = "\"K: \\\"commentless key\"=\"V: commentless translation\";"
                let stream = Stream(input)
                if let output = shouldNotThrow({ try parser.parse(stream) }) {
                    expect(output.0).to(equal("K: \"commentless key"))
                    expect(output.1).to(equal("V: commentless translation"))
                }
            }
        }
        describe("the entry parser") {
            
            let parser = DotStringsParser.entryObject
            it("should correctly parse an uncommented key-value pair") {
                
                let input = "\"K: commentless key\" = \"V: commentless translation\";"
                let stream = Stream(input)
                if let output = shouldNotThrow({ try parser.parse(stream) }) {
                    expect(output.key).to(equal("K: commentless key"))
                    expect(output.translation).to(equal("V: commentless translation"))
                }
            }
        }
        describe("the entries parser") {
            
            let parser = DotStringsParser.entries
            it("should correctly parse an uncommented key-value pair") {
                let input = "\"K: commentless key\" = \"V: commentless translation\";"
                let stream = Stream(input)
                if let output = shouldNotThrow({ try parser.parse(stream) }) {
                    expect(stream.isAtEnd).to(equal(true))
                    expect(output).toNot(beNil())
                    expect(output.count).to(equal(1))
                }
            }
        }
    }
}
