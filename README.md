# ✂️ Sparse ✂️

[![Version](https://img.shields.io/cocoapods/v/Sparse.svg?style=flat)](http://cocoapods.org/pods/Sparse)
[![License](https://img.shields.io/cocoapods/l/Sparse.svg?style=flat)](http://cocoapods.org/pods/Sparse)
![Swift](https://img.shields.io/badge/Swift-3.0-orange.svg)

Sparse is a simple parsing library, written in Swift. It is based on the parser-combinator approach used by Haskell's [Parsec](https://github.com/aslatter/parsec). Its focus is on natural language parser creation and descriptive error messages.

## Example

Here is a CSV parser:

```swift
let quote = character("\"")

let illegalCellCharacters = CharacterSet.newlines.union(CharacterSet(charactersIn: ","))

let cellCharacter = characterNot(in: illegalCellCharacters).named("cell character")
let escapedQuote = quote.skipThen(quote)
let quotedCellCharacter = characterNot("\"").otherwise(escapedQuote).named("quoted cell character")

let quotedCell = many(quotedCellCharacter, boundedBy: quote).asString()
let unquotedCell = many(cellCharacter).asString().map { $0.trimmingCharacters(in: .whitespaces) }

let cell = quotedCell.otherwise(unquotedCell)
let cellSeparator = whitespaces().then(character(",")).then(whitespaces())

let line = many(cell, separator: cellSeparator)
let ending = optional(newline()).then(end())
let csv = many(line, separator: newline()).thenSkip(ending)
```
    
Naming the component parsers allows for more descriptive error messages, e.g.:

    UNEXPECTED INPUT:
    Line 1, Column 10
    cell1,"ce"ll2",r1c3,r1c4,r1c5,r1c6,r1c7,"r1c8"
    ~~~~~~~~~~^
    EXPECTED: " in escaped quote
    OR: whitespace or , in cell separator
    OR: newline
    
## Installation

URLPatterns is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "Sparse"
```

## Credit

Sparse is based on Haskell's [Parsec](https://github.com/aslatter/parsec) and has been developed as a learning exercise.

## License

URLPatterns is available under the MIT license. See the LICENSE file for more info.
