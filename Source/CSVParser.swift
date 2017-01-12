//
//  CSVParser.swift
//  Pods
//
//  Created by John Morgan on 14/12/2016.
//
//

import Foundation

public enum CSVParser {
    
    static let quote = character("\"")
    
    static let illegalCellCharacters = CharacterSet.newlines.union(CharacterSet(charactersIn: ","))
    
    static let cellCharacter = characterNot(in: illegalCellCharacters).named("cell character")
    static let escapedQuote = quote.skipThen(quote)
    static let quotedCellCharacter = characterNot("\"").otherwise(escapedQuote).named("quoted cell character")
    
    static let quotedCell = many(quotedCellCharacter, boundedBy: quote).asString()
    static let unquotedCell = many(cellCharacter).asString().map { $0.trimmingCharacters(in: .whitespaces) }
    
    static let cell = quotedCell.otherwise(unquotedCell)
    static let cellSeparator = whitespaces().then(character(",")).then(whitespaces()).named("cell separator")
    
    static let line = many(cell, separator: cellSeparator)
    static let ending = optional(newline()).then(end()).named("file terminator")
    static let lineSeparator = newline().named("line separator")
    static let csv = many(line, separator: lineSeparator).thenSkip(ending)
    
    public static func parseCSV(input: String) throws -> [[String]] {
        
        let stream = Stream(input)
        let parsed = try csv._run(stream)
        return parsed
    }
}
