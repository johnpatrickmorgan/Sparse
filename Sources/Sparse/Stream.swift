//
//  Stream.swift
//  Pods
//
//  Created by John Morgan on 19/12/2016.
//
//

import Foundation

extension String {
    
    subscript(safe index: String.Index) -> Character? {
        
        guard index < endIndex else { return nil }
        guard index >= startIndex else { return nil }
        
        return self[index]
    }
}

/// Represents an input stream for parsing, capturing its changing state as it is consumed.
public class Stream {
    
    public let characters: String
    public var index: String.Index
    public var context: () -> ParsingContext = { return ParsingContext() }
    public var error: ParserError
    
    public init(_ characters: String, index: String.Index) {
        
        self.characters = characters
        self.index = index
        self.error = ParserError(input: characters)
    }
    
    public convenience init(_ characters: String) {
        
        self.init(characters, index: characters.startIndex)
    }
    
    @discardableResult public func consumeNext() -> Character? {
        
        guard let char = characters[safe: index] else { return nil }
        
        index = characters.index(after: index)
        
        return char
    }
    
    public func peekNext() -> Character? {
        
        return characters[safe: index]
    }
    
    public func peekPrevious() -> Character? {
        
        let previousIndex = characters.index(before: index)
        
        return characters[safe: previousIndex]
    }
    
    public var parsed: Substring {
        
        return characters.prefix(upTo: index)
    }
    
    public var remainder: Substring {
        return characters.suffix(from: index)
    }
    
    public var isAtEnd: Bool {
        return index >= characters.endIndex
    }
    
    func incorporate(error: Error) {
        if error is IgnoreError { return }
        let contextualizedError = ContextualizedError(context: context, error: error)
        self.error.incorporate(error: contextualizedError, at: self.index)
    }
}

extension Stream {
    
    var state: String.Index {
        get { return index }
        set { index = newValue }
    }
}
