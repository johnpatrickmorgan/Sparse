//
//  ParsingContext.swift
//  Pods
//
//  Created by John Morgan on 05/12/2016.
//
//

import Foundation

/// Conforming types capture a string and a position within that string.
public protocol PositionedInput {
    
    var input: String { get }
    var index: String.Index { get }
}

extension PositionedInput {
    
    public var positionDescription: String {
        
        let parsed = input[input.startIndex..<index]
        
        // NOTE: We cannot use CharacterSet.newlines as CR+LF is counted as two Unicode Scalars
        let newLineCharacters = Set("\n\r\r\n") // LF, CR, CR+LF
        let inputLines = input.split(omittingEmptySubsequences: false) { newLineCharacters.contains($0) }
        let parsedLines = String(parsed).split(omittingEmptySubsequences: false) { newLineCharacters.contains($0) }
        
        let line = parsedLines.count - 1
        let column = parsedLines.last?.count ?? 0
        let currentLine = inputLines[line]
        return [
            "Line \(line + 1), Column \(column + 1)",
            String(currentLine),
            "\(String(repeating: "~", count: column))^"
            ].joined(separator: "\n")
    }
}

