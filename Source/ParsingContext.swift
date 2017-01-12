//
//  ParsingContext.swift
//  Pods
//
//  Created by John Morgan on 05/01/2017.
//
//

import Foundation

public struct ParsingContext: CustomStringConvertible {
    
    public let parserNames: [String]
    
    init() {
        
        self.parserNames = []
    }
    
    init(parserNames: [String]) {
        
        self.parserNames = parserNames
    }
    
    public var description: String {
        
        guard let last = parserNames.last else { return "" }
        
        let ancestors = parserNames.dropLast()
        
        guard ancestors.count > 0 else { return last }
        
        return "\(last) in \(ancestors.joined(separator: "."))"
    }
    
    public func appending(name: String) -> ParsingContext {
        
        return ParsingContext(parserNames: parserNames + [name])
    }
    
    var name: String? {
        return parserNames.last
    }
    
    var parent: String? {
        return parserNames.dropLast().last
    }
}
