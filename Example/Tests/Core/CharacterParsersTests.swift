//
//  CoreTests.swift
//  Sparse
//
//  Created by John Morgan on 03/12/2016.
//  Copyright © 2016 CocoaPods. All rights reserved.
//

import Quick
import Nimble
@testable import Sparse

class CharacterParsersSpec: QuickSpec {
    
    override func spec() {
        
        describe("the character parser") {
            
            let target: Character = "X"
            let parser = character(target)
            
            it("should accept the right character") {
                if let output = shouldNotThrow({ try parser.parse(Stream(String(target))) }) {
                    expect(output).to(equal(target))
                }
            }
            it("should reject wrong characters") {
                _ = shouldThrow({ _ = try parser.parse(Stream("x")) })
            }
        }
    }
}
