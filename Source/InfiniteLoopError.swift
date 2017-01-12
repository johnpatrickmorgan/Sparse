//
//  InfiniteLoopError.swift
//  Pods
//
//  Created by John Morgan on 05/01/2017.
//
//

import Foundation

public struct InfiniteLoopError: PositionedInput, Error, CustomStringConvertible {
    
    public let input: String.CharacterView
    public let context: () -> ParsingContext
    public let index: String.Index
    
    public var contexts: [ParsingContext] { return [context()] }
    
    init(stream: Stream) {
        
        self.context = stream.context
        self.index = stream.index
        self.input = stream.characters
    }
    
    public var description: String {
        return "INFINITE LOOP WHILE PARSING: \(context().parserNames.last)\n\(self.positionDescription)"
    }
}
