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
            
            fit("should return the most advanced error in the stream") {
                let input = "abcabcabx"
                let stream = Stream(input)
                shouldThrow({ try parser._run(stream) })
                expect(stream.error!.index).to(equal("abcabcab".endIndex))
            }
        }
        
        describe("a failing parser") {
            let greeting = string("hello").otherwise(string("hi")).named("greeting")
            let greetee = many(characterNot(in: .whitespaces)).asString().named("greetee")
            let parser = greeting.thenSkip(whitespaces()).then(greetee).then(end())
            
            fit("should be properly recorded in the stream's error") {
                let input = "howdy partner"
                let stream = Stream(input)
                shouldThrow({ try parser._run(stream) })
                let nameHierarchies = stream.error!.contexts.map { $0().parserNames }
                expect(nameHierarchies[0]).to(equal(["greeting", "hello", "'e'"]))
                expect(nameHierarchies[1]).to(equal(["greeting", "hi", "'i'"]))
                let errorMessage = "UNEXPECTED INPUT:\nLine 1, Column 2\nhowdy partner\n~^\nEXPECTED:\n'e' in hello\n'i' in hi\n"
                expect(stream.error!.description).to(equal(errorMessage))
            }
        }
    }
}
