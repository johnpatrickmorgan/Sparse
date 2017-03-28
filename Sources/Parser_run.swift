//
//  Parser+run.swift
//  Pods
//
//  Created by John Morgan on 07/12/2016.
//
//

import Foundation

public extension Parser {
    
//    public func run(_ input: String) throws -> Output {
//
//        return try run(Stream(input))
//    }
    
    public func _run(_ input: Stream) throws -> Output {
        
        guard let name = name else {
            return try parse(input)
        }
        let initialContext = input.context
        input.context = { return initialContext().appending(name: name) }
        defer { input.context = initialContext }
        return try parse(input)
    }
    
    public func _runOrRestoreState(_ input: Stream) throws -> Output {
        
        let state = input.state
        let context = input.context
        do {
            return try _run(input)
        } catch {
            input.state = state
            input.context = context
            throw error
        }
    }
    
    public func _runThenRestoreState(_ input: Stream) throws -> Output {
        
        let state = input.state
        let context = input.context
        let output = try _runOrRestoreState(input)
        input.state = state
        input.context = context
        return output
    }
}
