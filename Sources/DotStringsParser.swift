//
//  StringsParser.swift
//  StringsToCSV
//
//  Created by John Morgan on 02/12/2016.
//  Copyright © 2016 John Morgan. All rights reserved.
//

import Foundation

public enum DotStringsParser {
    
    // Primitives
    static let wss = whitespaces()
    static let wsnl = whitespaceOrNewline()
    static let wsnls = whitespacesOrNewlines()
    static let wss1nl = wss.then(atMost(1, nl))
    static let nl = newline()
    static let qm = character("\"")
    static let sc = character(";")
    
    // Escapes
    static let escapableCharacter = characterNot("\\").otherwise(escapedSpecial)
    static let escapedSpecial: Parser<Character> = character("\\").skipThen(oneOf([
        character("\"").skipThen(pure("\"")),
        character("'").skipThen(pure("'")),
        character("n").skipThen(pure("\n")),
        character("r").skipThen(pure("\r")),
        character("0").skipThen(pure("\0")),
        character("\\").skipThen(pure("\\")),
        character("t").skipThen(pure("\t"))
        ])).named("escaped character")
    
    // Comments
    static let ilcStart = atLeast(2, character("/")).thenSkip(wss)
    static let ilcStop = character(in: .newlines)
    
    static let mlcStart = string("/*").thenSkip(many(character("*")))
    static let mlcStop = string("*/")

    static let mlc = many(anyCharacter().butNot(mlcStop), prefix: mlcStart, suffix: mlcStop).asString()
    static let ilc = many(anyCharacter().butNot(ilcStop), prefix: ilcStart, suffix: ilcStop).asString()
    
    static let comment = mlc.otherwise(ilc).thenSkip(wss1nl).named("comment")
    static let comments = many(comment)
    static let inlineComment = ilc.thenSkip(wss1nl).named("in-line comment")
    
    static let orphanedComment = atLeastOne(comment).then(wss1nl)
    
    // Key-value pairs
    static let text = many(escapableCharacter.butNot(qm), boundedBy: qm).asString().named("text")
    static let key = text.named("key")
    static let translation = text.named("translation")
    static let separator = wss.skipThen(character("=")).thenSkip(wss).named("separator")
    static let kvp = key.thenSkip(separator).then(translation).thenSkip(sc).named("pair")
    
    // Entries
    static let entryTuple = comments.then(kvp).thenSkip(wss).then(optional(inlineComment)).thenSkip(wsnls).map(flatten)
    static let entryObject = entryTuple.map(createEntry).named("entry")
    static let entries = many(entryObject.otherwiseSkip(orphanedComment)).map { $0.flatMap{$0} }
    
    // Strings Parser
    static let stringsParser = wsnls.skipThen(entries).thenSkip(end())
    
    public static func parseStrings(input: String) throws -> [DotStringsEntry] {
        
        let stream = Stream(input)
        let parsed = try stringsParser.parse(stream)
        return parsed
    }
    
    static func createEntry(preComments: [String], pair: (String, String), postComment: String?) -> DotStringsEntry {
        
        var comments = preComments.map { pc in
            return String(pc).components(separatedBy: .newlines).map {
                $0.trimmingCharacters(in: .whitespaces)
                }.joined(separator: "\n")
        }
        
        if let postComment = postComment { comments.append(postComment) }
        comments = comments.map { $0.trimmingCharacters(in: .whitespacesAndNewlines) }
        let (key, translation) = pair
        return DotStringsEntry(comments: comments, key: key, translation: translation)
    }
}
