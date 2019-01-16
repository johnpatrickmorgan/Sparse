//
//  ContextualizedError.swift
//  Sparse
//
//  Created by John Morgan on 02/11/2018.
//

import Foundation

public struct PositionedError: Error, PositionedInput, CustomStringConvertible {
    
    public let input: String
    public var index: String.Index
    var errors: [ContextualizedError]
    
    mutating func incorporate(error: ContextualizedError, at index: String.Index) {
        if index > self.index {
            self.index = index
            self.errors = [error]
        } else if index == self.index {
            errors.append(error)
        }
    }
    
    public var description: String {
        return [
            [positionDescription],
            errors.map { $0.description }
        ].flatMap { $0 }.joined(separator: "\n")
    }
}

extension PositionedError {
    
    init(input: String) {
        self.init(
            input: input,
            index: input.startIndex,
            errors: []
        )
    }
}
