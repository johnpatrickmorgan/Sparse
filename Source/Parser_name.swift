//
//  Parser+name.swift
//  Pods
//
//  Created by John Morgan on 07/12/2016.
//
//

import Foundation

public extension Parser {
    
    public func named(_ name: String?) -> Parser<Output> {
        
        return Parser<Output>(name, parse: self.parse)
    }
}
