//
//  ContextualizedError.swift
//  Sparse
//
//  Created by John Morgan on 02/11/2018.
//

import Foundation

/// Replaces an error that has already been captured in the stream, to avoid
/// capturing the same error at every level of the parser tree.
class IgnoreError: Error { }

let ignoreError = IgnoreError()
