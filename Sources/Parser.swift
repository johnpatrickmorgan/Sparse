//
//  Parser.swift
//  StringsToCSV
//
//  Created by John Morgan on 02/12/2016.
//  Copyright © 2016 John Morgan. All rights reserved.
//

import Foundation

public struct Parser<Output> {
    
    public let name: String?
    
    let __parse: (Stream) throws -> Output
    
    public init(_ name: String? = nil, parse: @escaping (Stream) throws -> Output) {
        
        self.name = name
        self.__parse = parse
    }
}
