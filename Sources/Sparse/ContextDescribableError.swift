//
//  ContextualizedError.swift
//  Sparse
//
//  Created by John Morgan on 02/11/2018.
//

import Foundation

/// An error that can provide a ParsingContext-aware description.
public protocol ContextDescribableError: Error {
    
    func description(in context: () -> ParsingContext) -> String
}

public extension ContextDescribableError where Self: CustomStringConvertible {
    
    func description(in context: () -> ParsingContext) -> String {
        return description
    }
}
