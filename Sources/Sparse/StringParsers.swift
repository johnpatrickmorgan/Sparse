//
//  StringParsers.swift
//  StringsToCSV
//
//  Created by John Morgan on 02/12/2016.
//  Copyright © 2016 John Morgan. All rights reserved.
//

import Foundation

public func string(_ string: String) -> Parser<String> {

    return Parser { stream in

        let initialContext = stream.context
        for expectedChar in string {
            guard let char = stream.peekNext(), char == expectedChar else {
                stream.context = { return initialContext().appending(name: "'\(expectedChar)'") }
                throw UnexpectedInputError()
            }
            stream.consumeNext()
        }
        return string
    }.named(string)
}

public func string(of character: Parser<Character>) -> Parser<String> {
    
    return many(character).asString()
}

public func anyString() -> Parser<String> {
    
    return string(of: anyCharacter())
}

extension Parser: ExpressibleByStringLiteral, ExpressibleByUnicodeScalarLiteral, ExpressibleByExtendedGraphemeClusterLiteral where Output == String {
    
    public typealias StringLiteralType = String
    
    public typealias ExtendedGraphemeClusterLiteralType = String

    public typealias UnicodeScalarLiteralType = String

    public init(extendedGraphemeClusterLiteral value: String) {
        self.init(stringLiteral: value)
    }

    public init(unicodeScalarLiteral value: String) {
        self.init(stringLiteral: value)
    }
    
    public init(stringLiteral value: String) {
        
        self = string(value)
    }
}
