# ✂️ Sparse ✂️

[![Version](https://img.shields.io/cocoapods/v/Sparse.svg?style=flat)](http://cocoapods.org/pods/Sparse)
[![License](https://img.shields.io/cocoapods/l/Sparse.svg?style=flat)](http://cocoapods.org/pods/Sparse)
![Swift](https://img.shields.io/badge/Swift-5.1-orange.svg)

Sparse is a simple parsing library, written in Swift. It is based on the parser-combinator approach used by Haskell's [Parsec](https://github.com/aslatter/parsec). Its focus is on natural language parser creation and descriptive error messages.

## Example

Here is a CSV parser:

```swift
let quote = character("\"")

let illegalCellCharacters = CharacterSet.newlines.union(CharacterSet(charactersIn: ","))
let unquotedCellCharacter = characterNot(in: illegalCellCharacters)
    .named("cell character")
let unquotedCell = many(unquotedCellCharacter).asString()
    .map { $0.trimmingCharacters(in: .whitespaces) }

let escapedQuote = quote.skipThen(quote)
    .named("escaped quote")
let quotedCellCharacter = characterNot("\"")
    .named("quoted cell character")
    .otherwise(escapedQuote)

let quotedCell = many(quotedCellCharacter, boundedBy: quote).asString()

let cell = quotedCell.otherwise(unquotedCell)

let cellSeparator = whitespaces().then(character(",")).then(whitespaces())
    .named("cell separator")
let line = many(cell, separator: cellSeparator)

let ending = optional(newline()).then(end())
let csv = many(line, separator: newline()).thenSkip(ending)

public func parseCSV(input: String) throws -> [[String]] {
    return try csv.parse(input)
}
```

Naming the component parsers allows for more descriptive error messages, e.g.:

    Line 8, Column 12
    r8c1 , "r8"c2" , r8c3 ,r8c4,r8c5,r8c6,r8c7 , r8c8
    ~~~~~~~~~~~^
    Expected: '"' in escaped quote
    Expected: whitespace in cell separator
    Expected: ',' in cell separator
    Expected: newline
    Expected: EOF: file

## Installation

### Swift Package Manager

Add Sparse as a dependency in Package.swift:

```swift
.package(url: "https://github.com/johnpatrickmorgan/sparse.git", from: "0.3.0"),
```

### CocoaPods

Add the following line to your Podfile:

```ruby
pod "Sparse"
```

## Credit

Sparse is based on Haskell's [Parsec](https://github.com/aslatter/parsec).

## License

Sparse is available under the MIT license. See the LICENSE file for more info.
