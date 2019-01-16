//
//  Transforms.swift
//  StringsToCSV
//
//  Created by John Morgan on 02/12/2016.
//  Copyright © 2016 John Morgan. All rights reserved.
//

import Foundation

extension Parser where Output: Collection, Output.Iterator.Element == Character {
    
    public func asString() -> Parser<String> {
        
        return self.map { return String($0) }
    }
}

public func flatten<A,B,C>(_ tuple: ((A,B),C)) -> (A,B,C) {
    
    return (tuple.0.0, tuple.0.1, tuple.1)
}

public func flatten<A,B,C>(_ tuple: (A,(B,C))) -> (A,B,C) {
    
    return (tuple.0, tuple.1.0, tuple.1.1)
}

public func flatten<A,B,C,D>(_ tuple: (((A,B),C),D)) -> (A,B,C,D) {
    
    return (tuple.0.0.0, tuple.0.0.1, tuple.0.1, tuple.1)
}

public func flatten<A,B,C,D>(_ tuple: ((A,B),(C,D))) -> (A,B,C,D) {
    
    return (tuple.0.0, tuple.0.1, tuple.1.0, tuple.1.1)
}

public func flatten<A,B,C,D,E>(_ tuple: ((((A,B),C),D),E)) -> (A,B,C,D,E) {
    
    return (tuple.0.0.0.0, tuple.0.0.0.1, tuple.0.0.1, tuple.0.1, tuple.1)
}
