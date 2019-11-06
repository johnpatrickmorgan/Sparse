//
//  UnexpectedInputError.swift
//  Pods
//
//  Created by John Morgan on 05/01/2017.
//
//

import Foundation

/// An error signifying that the parser found unexpected input.
public struct UnexpectedInputError: ContextDescribableError {
    
    public func description(in context: () -> ParsingContext) -> String {
        return "Expected: \(context())"
    }
}
