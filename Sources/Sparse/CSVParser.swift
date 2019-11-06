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
    static let unquotedCellCharacter = characterNot(in: illegalCellCharacters)
        .named("cell character")
    static let unquotedCell = many(unquotedCellCharacter).asString()
        .map { $0.trimmingCharacters(in: .whitespaces) }
    
    static let escapedQuote = quote.skipThen(quote)
        .named("escaped quote")
    static let quotedCellCharacter = characterNot("\"")
        .named("quoted cell character")
        .otherwise(escapedQuote)
        
    static let quotedCell = many(quotedCellCharacter, boundedBy: quote).asString()
    
    static let cell = quotedCell.otherwise(unquotedCell)
    
    static let cellSeparator = whitespaces().then(character(",")).then(whitespaces())
        .named("cell separator")
    static let line = many(cell, separator: cellSeparator)
    
    static let ending = optional(newline()).then(end())
    static let csv = many(line, separator: newline()).thenSkip(ending)
    
    public static func parseCSV(input: String) throws -> [[String]] {
        return try csv.parse(input)
    }
}
