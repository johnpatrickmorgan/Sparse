//
//  ParserCombinatorsTests.swift
//  Sparse
//
//  Created by John Morgan on 07/12/2016.
//  Copyright © 2016 CocoaPods. All rights reserved.
//

import Foundation
import Quick
import Nimble
@testable import Sparse

class ParserCombinatorsSpec: QuickSpec {
    
    override func spec() {
        
        let input = "VR"
        let stream = Stream(input)
        let x = String(stream.remainder)
        
        describe("the 'then' function") {
            
            let parser = character("X").then(character("Y"))

            it("should parse good input correctly") {
                let input = "XY"
                let stream = Stream(input)
                if let output = shouldNotThrow({ try parser.parse(stream) }) {
                    expect(output.0).to(equal("X"))
                    expect(output.1).to(equal("Y"))
                    expect(stream.isAtEnd).to(equal(true))
                }
            }
            it("should fail on bad inputs") {
                let badInputs = ["Xy", "X", "YY", "Xray"]
                for input in badInputs {
                    let stream = Stream(input)
                    _ = shouldThrow({ _ = try parser.parse(stream) })
                }
            }
        }
        describe("the 'skipThen' function") {
            
            let parser = character("X").skipThen(character("Y"))
            
            it("should parse good input correctly") {
                let input = "XY"
                let stream = Stream(input)
                if let output = shouldNotThrow({ try parser.parse(stream) }) {
                    expect(output).to(equal("Y"))
                    expect(stream.isAtEnd).to(equal(true))
                }
            }
            it("should fail on bad inputs") {
                let badInputs = ["Xy", "X", "YY", "Xray"]
                for input in badInputs {
                    let stream = Stream(input)
                    _ = shouldThrow({ _ = try parser.parse(stream) })
                }
            }
        }
        describe("the 'thenSkip' function") {
            
            let parser = character("X").thenSkip(character("Y"))
            
            it("should parse good input correctly") {
                let input = "XY"
                let stream = Stream(input)
                if let output = shouldNotThrow({ try parser.parse(stream) }) {
                    expect(output).to(equal("X"))
                    expect(stream.isAtEnd).to(equal(true))
                }
            }
            it("should fail on bad inputs") {
                let badInputs = ["Xy", "X", "YY", "Xray"]
                for input in badInputs {
                    let stream = Stream(input)
                    _ = shouldThrow({ _ = try parser.parse(stream) })
                }
            }
        }
        describe("the 'butNot' function") {
            
            let parser = character(in: .alphanumerics).butNot(string("XX"))
            
            it("should parse valid input") {
                let input = "hello"
                let stream = Stream(input)
                if let output = shouldNotThrow({ try parser.parse(stream) }) {
                    expect(output).to(equal("h"))
                    expect(String(stream.remainder)).to(equal("ello"))
                }
            }
            it("should fail on invalid input") {
                let input = "XX"
                let stream = Stream(input)
                _ = shouldThrow({ try parser.parse(stream) })
            }
        }
        describe("the 'while' function") {
            
            let parser = many(character(in: .alphanumerics), while: characterNot("V"))
            
            it("should stop parsing due to terminating parser") {
                let input = "helloVworld"
                let stream = Stream(input)
                if let output = shouldNotThrow({ try parser.parse(stream) }) {
                    expect(output).to(equal(["h","e","l","l","o"]))
                    expect(String(stream.remainder)).to(equal("Vworld"))
                }
            }
            it("should succeed if the terminator is not found") {
                let input = "hello"
                let stream = Stream(input)
                if let output = shouldNotThrow({ try parser.parse(stream) }) {
                    expect(output).to(equal(["h","e","l","l","o"]))
                    expect(stream.isAtEnd).to(equal(true))
                }
            }
            it("should stop parsing due to the original parser") {
                let input = "hello world"
                let stream = Stream(input)
                if let output = shouldNotThrow({ try parser.parse(stream) }) {
                    expect(output).to(equal(["h","e","l","l","o"]))
                    expect(String(stream.remainder)).to(equal(" world"))
                }
            }
        }
        describe("the 'otherwise' function") {
            
            let parser = character("V").otherwise(character("X"))
            
            it("should correctly parse with the first parser") {
                let input = "VR"
                let stream = Stream(input)
                if let output = shouldNotThrow({ try parser.parse(stream) }) {
                    expect(output).to(equal("V"))
                    expect(String(stream.remainder)).to(equal("R"))
                }
            }
            it("should correctly parse with the second parser") {
                let input = "XR"
                let stream = Stream(input)
                if let output = shouldNotThrow({ try parser.parse(stream) }) {
                    expect(output).to(equal("X"))
                    expect(String(stream.remainder)).to(equal("R"))
                }
            }
            it("should fail if both parsers fail") {
                let input = "JR"
                let stream = Stream(input)
                _ = shouldThrow({ _ = try parser.parse(stream) })
            }
        }
        describe("the 'otherwiseSkip' function") {
            
            let parser = character("V").otherwiseSkip(character("X"))
            
            it("should correctly parse with the first parser") {
                let input = "VR"
                let stream = Stream(input)
                let x = String(stream.remainder)
                if let output = shouldNotThrow({ try parser.parse(stream) }) {
                    expect(output).to(equal("V"))
                    print(output)
                    print(stream.index)
                    print(stream.characters.indices.contains(stream.index))
                    let r = String(stream.remainder)
                    print(r)
                }
            }
            it("should correctly skip the second parser") {
                let input = "XR"
                let stream = Stream(input)
                if let output = shouldNotThrow({ try parser.parse(stream) }) {
                    expect(output).to(beNil())
                    expect(String(stream.remainder)).to(equal("R"))
                }
            }
            it("should fail if both parsers fail") {
                let input = "JR"
                let stream = Stream(input)
                _ = shouldThrow({ _ = try parser.parse(stream) })
            }
        }
    }
}
