//
//  Stream.swift
//  Pods
//
//  Created by John Morgan on 19/12/2016.
//
//

import Foundation

extension String.CharacterView {
    
    subscript(safe index: String.Index) -> Character? {
        
        guard index < endIndex else { return nil }
        guard index >= startIndex else { return nil }
        
        return self[index]
    }
}

// TODO: make Stream generic and use a StreamType protocol so that other implementations can be used
public class Stream {
    
    public let characters: String.CharacterView
    public var index: String.Index
    public var context: () -> ParsingContext = { return ParsingContext() }
    public var error: UnexpectedInputError?
    
    public init(_ characters: String.CharacterView, index: String.Index) {
        
        self.characters = characters
        self.index = index
    }
    
    public init(_ characters: String.CharacterView) {
        
        self.characters = characters
        self.index = characters.startIndex
    }
    
    public convenience init(_ string: String) {
        
        self.init(string.characters)
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
    
    var parsed: String.CharacterView {
        
        return characters.prefix(upTo: index)
    }
    
    var remainder: String.CharacterView {
        
        return characters.suffix(from: index)
    }
    
    var isAtEnd: Bool {
        
        return index >= characters.endIndex
    }
    
    func throwUnexpectedInputError() throws -> Never {
        
        let unexpectedInputError = self.error?.incorporating(context, at: index) ?? UnexpectedInputError(stream: self)
        self.error = unexpectedInputError
        throw unexpectedInputError
    }
}

extension Stream {
    
    var state: String.Index {
        get { return index }
        set { index = newValue }
    }
}
