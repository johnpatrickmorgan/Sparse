//
//  ParserErrorTests.swift
//  Sparse
//
//  Created by John Morgan on 28/12/2016.
//  Copyright © 2016 CocoaPods. All rights reserved.
//

import Foundation
import Quick
import Nimble
@testable import Sparse

class ParserErrorSpec: QuickSpec {
    
    override func spec() {
        
        describe("a failing parser") {
            let parser = many(string("abc")).then(end())
            
            it("should return the most advanced error in the stream") {
                let input = "abcabcabx"
                let stream = Stream(input)
                shouldThrow({ try parser.parse(stream) })
                expect(stream.error.index).to(equal("abcabcab".endIndex))
            }
        }
        
        describe("an error in a multiline stream") {
            let greeting = string("hello").otherwise(string("hi"))
            let greetings = many(greeting.thenSkip(whitespacesOrNewlines()))
            let parser = greetings.thenSkip(end())
            
            it("should give the correct line number") {
                let input = "hi\nhello\nhi\nhello\nhowdy"
                let stream = Stream(input)
                guard let error = shouldThrow({ try parser.parse(stream) }) as? ParserError else {
                    return
                }
                let expectedPrefix = "Line 5, Column 2"
                let actualPrefix = String(error.description.prefix(upTo: expectedPrefix.endIndex))
                    expect(actualPrefix).to(equal(expectedPrefix))
            }
        }
        
        describe("an infinite loop parser") {
            let x = string("x").withoutConsuming()
            let parser = many(x)
            
            it("should throw the correct error") {
                let input = "xxx"
                let stream = Stream(input)
                guard let error = shouldThrow({ try parser.parse(stream) }) as? ParserError else {
                    return
                }
                let expectedErrorDescription = """
                    Line 1, Column 1
                    xxx
                    ^
                    Parser stuck in infinite loop
                    """
                expect(error.description).to(equal(expectedErrorDescription))
            }
        }
    }
}
