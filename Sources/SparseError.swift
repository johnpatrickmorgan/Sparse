//
//  ParsingContext.swift
//  Pods
//
//  Created by John Morgan on 05/12/2016.
//
//

import Foundation

public protocol PositionedInput {
    
    var input: String { get }
    var index: String.Index { get }
}

extension PositionedInput {
    
    public var positionDescription: String {
        
        let parsed = input[input.startIndex..<index]
        
        let inputLines = String(input).components(separatedBy: "\n")
        let parsedLines = String(parsed).components(separatedBy: "\n")
        
        let line = parsedLines.count - 1
        let column = parsedLines.last?.count ?? 0
        let currentLine = inputLines[line]
        return [
            "Line \(line + 1), Column \(column + 1)",
            currentLine,
            "\(String(Array(repeating: "~", count: column)))^"
            ].joined(separator: "\n")
    }
}

