# ✂️ Sparse ✂️

[![Version](https://img.shields.io/cocoapods/v/Sparse.svg?style=flat)](http://cocoapods.org/pods/Sparse)
[![License](https://img.shields.io/cocoapods/l/Sparse.svg?style=flat)](http://cocoapods.org/pods/Sparse)
![Swift](https://img.shields.io/badge/Swift-4.2-orange.svg)

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

    Line 5, Column 11
    r5c1, "r5"c2" ,r5c3,r5c4 ,r5c5,r5c6,r5c7,r5c8
    ~~~~~~~~~~^
    Expected: '"' in quoted cell character
    Expected: whitespace in cell separator
    Expected: ',' in cell separator
    Expected: line separator
    Expected: newline
    Expected: EOF

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
