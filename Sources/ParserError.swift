//
//  ContextualizedError.swift
//  Sparse
//
//  Created by John Morgan on 02/11/2018.
//

import Foundation

/// Capture a number of contextualized errors thrown at a particular index in an input stream.
public struct ParserError: Error, PositionedInput, CustomStringConvertible {
    
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
            errors.map { $0.description }.removingDuplicates()
        ].flatMap { $0 }.joined(separator: "\n")
    }
}

extension ParserError {
    
    init(input: String) {
        self.init(
            input: input,
            index: input.startIndex,
            errors: []
        )
    }
}

private extension Collection where Element: Hashable {
    
    func removingDuplicates() -> [Element] {
        var seen: Set<Element> = []
        var uniques: [Element] = []
        for element in self {
            guard !seen.contains(element) else { continue }
            seen.insert(element)
            uniques.append(element)
        }
        return uniques
    }
}
