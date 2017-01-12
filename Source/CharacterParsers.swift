//
//  CharacterParsers.swift
//  StringsToCSV
//
//  Created by John Morgan on 02/12/2016.
//  Copyright © 2016 John Morgan. All rights reserved.
//

import Foundation

extension Character {
    
    func unicodeScalar() -> UnicodeScalar {
        
        let characterString = String(self)
        let scalars = characterString.unicodeScalars
        
        return scalars[scalars.startIndex]
    }
}

public func character(condition: @escaping (Character) -> Bool) -> Parser<Character> {
    
    return Parser { stream in
        
        guard let char = stream.peekNext(), condition(char) else {
            
            try stream.throwUnexpectedInputError()
        }
        stream.consumeNext()
        
        return char
    }
}

public func anyCharacter() -> Parser<Character> {
    
    return character(condition: { _ in true }).named("any character")
}

public func character(in set: CharacterSet) -> Parser<Character> {
    
    return character(condition: { set.contains($0.unicodeScalar()) })
}

public func character(_ char: Character) -> Parser<Character> {
    
    return character(condition: { $0 == char }).named(String(char))
}

public func characterNot(in set: CharacterSet) -> Parser<Character> {
    
    return character(condition: { !set.contains($0.unicodeScalar()) })
}

public func characterNot(_ char: Character) -> Parser<Character> {
    
    return character(condition: { $0 != char }).named("not \(String(char))")
}

public func characterNot(condition: @escaping (Character) -> Bool) -> Parser<Character> {
    
    return character(condition: { !condition($0) })
}

public func whitespace() -> Parser<Character> {
    
    return character(in: .whitespaces).named("whitespace")
}

public func whitespaces() -> Parser<[Character]> {
    
    return many(whitespace())
}

public func whitespaceOrNewline() -> Parser<Character> {
    
    return character(in: .whitespacesAndNewlines).named("whitespace or newline")
}

public func whitespacesOrNewlines() -> Parser<[Character]> {
    
    return many(whitespaceOrNewline())
}

public func newline() -> Parser<Character> {
    
    return character(in: .newlines).named("newline")
}

public func newlines() -> Parser<[Character]> {
    
    return many(newline())
}
