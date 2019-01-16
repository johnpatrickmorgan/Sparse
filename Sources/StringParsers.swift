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

//public func string(_ string: String) -> Parser<Substring> {
//
//    // TODO: Improve using Substring
//    return string.reduce(pure(String())) { (parser, char) -> Parser<String> in
//        return parser.then(character(char)).map { $0.0.appending(String($0.1)) }
//        }.map { $0[...] }.named(string)
//}

//public func string(_ string: String) -> Parser<String> {
//    let charParsers = string.map { character($0) }
//    let parser = charParsers.reduce(pure(()), { parser, nextParser in parser.thenSkip(nextParser) })
//    return parser.map { _ in return string }.named(string)
//}

public func string(of character: Parser<Character>) -> Parser<String> {
    
    return many(character).asString()
}

public func anyString() -> Parser<String> {
    
    return string(of: anyCharacter())
}

//extension Parser: ExpressibleByStringLiteral where Output == Substring {
//    
//    public typealias StringLiteralType = String
//    
//    public typealias ExtendedGraphemeClusterLiteralType = String
//    
//    public typealias UnicodeScalarLiteralType = String
//
//    public init(extendedGraphemeClusterLiteral value: String) {
//        self.init(stringLiteral: value)
//    }
//    
//    public init(unicodeScalarLiteral value: String) {
//        self.init(stringLiteral: value)
//    }
//    
//    public init(stringLiteral value: String) {
//        
//        self.name = value
//        self = string(value)
//    }
//}
