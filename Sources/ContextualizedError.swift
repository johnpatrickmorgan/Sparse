//
//  ContextualizedError.swift
//  Sparse
//
//  Created by John Morgan on 02/11/2018.
//

import Foundation

public struct ContextualizedError: CustomStringConvertible {
    
    let context: () -> ParsingContext
    let error: Error
    
    public var description: String {
        return (error as? ParsingError)?.description(in: context) ?? error.localizedDescription
    }
}
