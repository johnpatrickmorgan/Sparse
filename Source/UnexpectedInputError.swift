//
//  UnexpectedInputError.swift
//  Pods
//
//  Created by John Morgan on 05/01/2017.
//
//

import Foundation

public struct UnexpectedInputError: PositionedInput, Error, CustomStringConvertible {
    
    public let input: String.CharacterView
    public let contexts: [() -> ParsingContext]
    public var index: String.Index
    
    init(stream: Stream) {
        
        self.contexts = [stream.context]
        self.index = stream.index
        self.input = stream.characters
    }
    
    init(parsing context: @escaping () -> ParsingContext, at index: String.Index, input: String.CharacterView) {
        self.contexts = [context]
        self.input = input
        self.index = index
    }
    
    init(parsing contexts: [() -> ParsingContext], plus context: @escaping () -> ParsingContext, at index: String.Index, input: String.CharacterView) {
        var newContexts = contexts
        newContexts.append(context)
        self.contexts = newContexts
        self.input = input
        self.index = index
    }
    
    init?(_ contexts: [() -> ParsingContext], at index: String.Index, input: String.CharacterView) {
        
        guard let first = contexts.first else { return nil }
        
        self.contexts = contexts
        self.input = input
        self.index = index
    }
    
    func incorporating(_ context: @escaping () -> ParsingContext, at index: String.Index) -> UnexpectedInputError {
        
        guard index >= self.index else {
            return self
        }
        
        if index == self.index {
            return UnexpectedInputError(parsing: contexts, plus: context, at: index, input: input)
        }
        return UnexpectedInputError(parsing: context, at: index, input: input)
    }
    
    public var description: String {
        
        let invokedContexts = contexts.map { $0() }
        var contextsByParent = [String : Set<String>]()
        var orphanContexts = Set<String>()
        
        for context in invokedContexts {
            
            guard let name = context.name, !name.isEmpty else { continue }
            
            guard let parent = context.parent else {
                orphanContexts.insert(name)
                continue
            }
            if let existing = contextsByParent[parent] {
                contextsByParent[parent]?.insert(name)
            } else {
                contextsByParent[parent] = [name]
            }
        }
        let descriptions = orphanContexts + contextsByParent.flatMap { parent, children in
            var c = children
            guard let first = c.popFirst() else { return nil }
            guard !c.isEmpty else { return "\(first) in \(parent)" }
            return "\(c.joined(separator: ", ")) or \(first) in \(parent)"
        }
        
        let expectation = "\(descriptions.joined(separator: "\n"))"
        
        return "UNEXPECTED INPUT:\n\(self.positionDescription)\nEXPECTED:\n\(expectation)\n"
    }
}
