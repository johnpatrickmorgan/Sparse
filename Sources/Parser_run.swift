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
            if input.error.errors.count > 0 {
                throw input.error
            }
            throw error
        }
    }
    
    func _run(_ input: Stream, restoreStateOnSuccess: Bool = false, restoreStateOnFailure: Bool = false) throws -> Output {
        let initialContext = input.context
        let initialState = input.state
        defer { input.context = initialContext }
        do {
            if let name = name {
                input.context = { return initialContext().appending(name: name) }
            }
            let output = try __parse(input)
            if restoreStateOnSuccess {
                input.state = initialState
            }
            return output
        } catch {
            input.incorporate(error: error)
            if restoreStateOnFailure {
                input.state = initialState
            }
            throw ignoreError
        }
    }
    
    func _runOrRestoreState(_ input: Stream) throws -> Output {
        return try _run(input, restoreStateOnSuccess: false, restoreStateOnFailure: true)
    }
    
    func _runThenRestoreState(_ input: Stream) throws -> Output {
        return try _run(input, restoreStateOnSuccess: true, restoreStateOnFailure: true)
    }
}
