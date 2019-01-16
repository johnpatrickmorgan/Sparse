//
//  InfiniteLoopError.swift
//  Pods
//
//  Created by John Morgan on 05/01/2017.
//
//

import Foundation

public struct InfiniteLoopError: ParsingError {
    
    func description(in context: () -> ParsingContext) -> String {
        let contextDescription = context().description
        guard !contextDescription.isEmpty else {
            return "Parser stuck in infinite loop"
        }
        return "Parser stuck in infinite loop parsing: \(context().description)"
    }
}
