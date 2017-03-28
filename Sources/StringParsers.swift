//
//  StringParsers.swift
//  StringsToCSV
//
//  Created by John Morgan on 02/12/2016.
//  Copyright © 2016 John Morgan. All rights reserved.
//

import Foundation

public func string(_ string: String) -> Parser<String> {
    
    return string.characters.reduce(pure(String())) { (parser, char) -> Parser<String> in
    
        return parser.then(character(char)).map { $0.0.appending(String($0.1)) }
    }.named(string)
}

public func string(of character: Parser<Character>) -> Parser<String> {
    
    return many(character).asString()
}

public func anyString() -> Parser<String> {
    
    return string(of: anyCharacter())
}

// TODO: When Swift supports conditional conformance
//extension Parser: ExpressibleByStringLiteral where Output == String.CharacterView {
//    
//    public init(stringLiteral value: String) {
//        
//        self.name = value
//        self.parse = string(value).parse
//    }
//}
