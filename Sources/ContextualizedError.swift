//
//  ContextualizedError.swift
//  Sparse
//
//  Created by John Morgan on 02/11/2018.
//

import Foundation

/// An error decorated with a lazily evaluated parsing context.
public struct ContextualizedError: CustomStringConvertible {
    
    let context: () -> ParsingContext
    let error: Error
    
    public var description: String {
        return (error as? ContextDescribableError)?.description(in: context) ?? error.localizedDescription
    }
}
