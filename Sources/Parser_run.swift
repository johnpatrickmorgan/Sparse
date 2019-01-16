//
//  Parser+run.swift
//  Pods
//
//  Created by John Morgan on 07/12/2016.
//
//

import Foundation

public extension Parser {
    
    public func parse(_ input: Stream) throws -> Output {
        do {
            return try _run(input)
        } catch {
            if input._error.errors.count > 0 {
                throw input._error
            }
            throw error
        }
    }
    
    func _run(_ input: Stream, restoreStateIfSuccess: Bool = false, restoreStateIfFailed: Bool = false) throws -> Output {
        let initialContext = input.context
        defer { input.context = initialContext }
        do {
            if let name = name {
                input.context = { return initialContext().appending(name: name) }
            }
            return try __parse(input)
        } catch {
            input.incorporate(error: error)
            throw ignoreError
        }
    }
    
    func _runOrRestoreState(_ input: Stream) throws -> Output {
        
        let state = input.state
        do {
            return try _run(input)
        } catch {
            input.state = state
            throw error
        }
    }
    
    func _runThenRestoreState(_ input: Stream) throws -> Output {
        
        let state = input.state
        let output = try _runOrRestoreState(input)
        input.state = state
        return output
    }
}
