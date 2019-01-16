//
//  Parser_creators.swift
//  Pods
//
//  Created by John Morgan on 07/12/2016.
//
//

import Foundation

public func pure<T>(_ result: T) -> Parser<T> {
    
    return Parser<T> { stream in return result }
}

public func pureError<T>() -> Parser<T> {
    
    return Parser<T> { stream in
        throw UnexpectedInputError()
    }
}

public func end() -> Parser<Void> {
    
    return Parser<Void> { stream in
        guard stream.peekNext() == nil else {
            throw UnexpectedInputError()
        }
        return ()
    }.named("EOF")
}

public func many<T>(_ parser: Parser<T>) -> Parser<[T]> {
    
    return Parser<[T]> { stream in
        
        var result: [T] = []
        
        while true {
            
            let initialState = stream.state
            guard let element = try? parser._runOrRestoreState(stream) else { return result }
            guard stream.state != initialState else { throw InfiniteLoopError() }
            result.append(element)
        }
    }
}

public func many<T,U>(_ parser: Parser<T>, separator: Parser<U>) -> Parser<[T]> {
    
    return many(parser.thenSkip(separator)).then(parser).map { $0 + [$1] }
}

public func many<T,B,E>(_ parser: Parser<T>, prefix: Parser<B>, suffix: Parser<E>) -> Parser<[T]> {
    
    return many(parser, prefix: prefix).thenSkip(suffix)
}

public func many<T,B>(_ parser: Parser<T>, prefix: Parser<B>) -> Parser<[T]> {
    
    return prefix.skipThen(many(parser))
}

public func many<T,E>(_ parser: Parser<T>, suffix: Parser<E>) -> Parser<[T]> {
    
    return many(parser).thenSkip(suffix)
}

public func many<T,S>(_ parser: Parser<T>, boundedBy bound: Parser<S>) -> Parser<[T]> {
    
    return many(parser, prefix: bound, suffix: bound)
}

public func many<T,E>(_ parser: Parser<T>, until end: Parser<E>) -> Parser<[T]> {
    
    return many(parser.butNot(end))
}

public func many<T,E>(_ parser: Parser<T>, untilSkipping end: Parser<E>) -> Parser<[T]> {
    
    return many(parser.butNot(end)).thenSkip(end)
}

public func many<T,C>(_ parser: Parser<T>, while check: Parser<C>) -> Parser<[T]> {
    
    return many(parser.and(check))
}

public func `optional`<T>(_ parser: Parser<T>) -> Parser<T?> {
    
    return parser.map { .some($0) }.otherwise(pure(nil))
}

public func exactly<T>(_ n: Int, _ parser: Parser<T>) -> Parser<[T]> {
    
    precondition(n >= 0)
    
    var acc = pure([T]())
    for _ in 0..<n {
        acc = acc.then(parser).map { $0 + [$1] }
    }
    return acc
}

public func atMost<T>(_ n: Int, _ parser: Parser<T>) -> Parser<[T]> {
    
    precondition(n >= 0)
    
    return Parser<[T]> { stream in
        
        var result = [T]()
        
        // TODO: refactor many and atMost into one?
        while result.count < n {

            let initialState = stream.state
            guard let element = try? parser._runOrRestoreState(stream) else { return result }
            guard stream.state != initialState else { throw InfiniteLoopError() }
            result.append(element)
        }
        return result
    }
}

public func atMostOne<T>(_ parser: Parser<T>) -> Parser<[T]> {
    
    return atMost(1, parser)
}

public func atLeastOne<T>(_ parser: Parser<T>) -> Parser<[T]> {
    
    return atLeast(1, parser)
}

public func atLeast<T>(_ n: Int, _ parser: Parser<T>) -> Parser<[T]> {
    
    precondition(n >= 0)
    
    return exactly(n, parser).then(many(parser)).map { $0 + $1 }
}

public func oneOf<T>(_ parsers: [Parser<T>]) -> Parser<T> {
    
    precondition(parsers.count > 0)
    
    return parsers.dropFirst().reduce(parsers[0]) { acc, parser in
        return acc.otherwise(parser)
    }
}

public func unwrap<T>(_ parser: Parser<T?>, orThrow error: Error) -> Parser<T> {
    
    return parser.map {
        guard let parsed = $0 else { throw error }
        return parsed
    }
}

public func unwrap<T>(_ parser: Parser<T?>, orPure value: T) -> Parser<T> {
    
    return parser.map {
        guard let parsed = $0 else { return value }
        return parsed
    }
}
