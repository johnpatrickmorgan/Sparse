//
//  ParsingContext.swift
//  Pods
//
//  Created by John Morgan on 05/12/2016.
//
//

import Foundation

public protocol PositionedInput {
    
    var input: String.CharacterView { get }
    var index: String.Index { get }
}

extension PositionedInput {
    
    public var positionDescription: String {
        
        let parsed = input[input.startIndex..<index]
        
        let inputLines = String(input).components(separatedBy: .newlines)
        let parsedLines = String(parsed).components(separatedBy: .newlines)
        
        let line = parsedLines.count - 1
        let column = parsedLines.last?.characters.count ?? 0
        let currentLine = inputLines[line]
        return [
            "Line \(line + 1), Column \(column + 1)",
            currentLine,
            "\(String(Array(repeating: "~", count: column)))^"
            ].joined(separator: "\n")
    }
}

