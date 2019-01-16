//
//  UnexpectedInputError.swift
//  Pods
//
//  Created by John Morgan on 05/01/2017.
//
//

import Foundation

protocol ParsingError: Error {
    
    func description(in context: () -> ParsingContext) -> String
}

extension ParsingError where Self: CustomStringConvertible {
    
    func description(in context: () -> ParsingContext) -> String {
        return description
    }
}

public struct UnexpectedInputError: ParsingError {
    
    func description(in context: () -> ParsingContext) -> String {
        return "Expected: \(context())"
    }
}
