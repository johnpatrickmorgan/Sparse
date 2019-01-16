//
//  Parser_combinations.swift
//  Pods
//
//  Created by John Morgan on 07/12/2016.
//
//

import Foundation

public extension Parser {
    
    public func map<T>(_ transform: @escaping (Output) throws -> T) -> Parser<T> {
        
        return Parser<T> { stream in
            
            let result = try self._run(stream)
            return try transform(result)
        }
    }
    
    public func then<T>(_ other: Parser<T>) -> Parser<(Output,T)> {
        
        return Parser<(Output,T)> { stream in
            
            let first = try self._runOrRestoreState(stream)
            let second = try other._runOrRestoreState(stream)
            return (first, second)
        }
    }
    
    public func skipThen<T>(_ other: Parser<T>) -> Parser<T> {
        
        return self.then(other).map { $0.1 }
    }
    
    public func thenSkip<T>(_ other: Parser<T>) -> Parser<Output> {
        
        return self.then(other).map { $0.0 }
    }
    
    public func otherwise(_ other: Parser<Output>) -> Parser<Output> {
        
        return Parser<Output> { stream in

            let first = try? self._runOrRestoreState(stream)
            return try first ?? (other._runOrRestoreState(stream))
        }
    }
    
    public func otherwiseSkip<T>(_ other: Parser<T>) -> Parser<Output?> {
        
        return self.map { Optional.some($0) }.otherwise(other.map { _ in return nil })
    }
    
    public func and<T>(_ other: Parser<T>) -> Parser<Output> {
        
        return Parser<Output> { stream in
            
            let _ = try other._runThenRestoreState(stream)
            return try self._run(stream)
        }
    }
    
    public func butNot<T>(_ other: Parser<T>) -> Parser<Output> {
        
        return Parser<Output> { stream in
            guard (try? other._runThenRestoreState(stream)) == nil else {
                throw UnexpectedInputError()
            }
            return try self._run(stream)
        }
    }
    
    public func withoutConsuming() -> Parser<Output> {
        
        return Parser<Output> { stream in
            
            return try self._runThenRestoreState(stream)
        }
    }
    
    public func skip() -> Parser<Void> {
        
        return Parser<Void> { stream in
            
            let _ = try self._run(stream)
            return ()
        }
    }
    
    public func surrounded<T>(by parser: Parser<T>) -> Parser<(T, Output, T)> {
        
        return parser.then(self).then(parser).map(flatten)
    }
    
    public func surrounded<T>(bySkipped parser: Parser<T>) -> Parser<Output> {
        
        return parser.skipThen(self).thenSkip(parser)
    }
    
    public func skipping<T, U>(prefix: Parser<T>, suffix: Parser<U>) -> Parser<Output> {
        
        return prefix.skipThen(self).thenSkip(suffix)
    }
    
    public func skipping<T>(prefix: Parser<T>) -> Parser<Output> {
        
        return prefix.skipThen(self)
    }
    
    public func skipping<T>(suffix: Parser<T>) -> Parser<Output> {
        
        return self.thenSkip(suffix)
    }
}
