//https://www.hackingwithswift.com/100/1

import UIKit


// MARK: - Strings
var greeting = "Hello, playground"
greeting = "Goodbye"

// MARK: - Integers
var age = 38
var population = 8_000_000

// MARK: - Multiline Strings
var str1 = """
This goes
over multiple
lines
"""

// If you only want multi-line strings to format your code neatly,
// and you don’t want those line breaks to actually be in your string,
// end each line with a \, like this:
var str2 = """
This goes \
over multiple \
lines
"""

// MARK: - Doubles
// Double” is short for “double-precision floating-point number”
// and it’s a fancy way of saying it holds fractional values such as 38.1, or 3.141592654.
var pi = 3.141

// MARK: - Boolean
var awesome = true

// MARK: - String Interpolation
var score = 85
var str = "Your score was \(score)"
var results = "The test results are here: \(str)"

// MARK: - Constants
// you should always use let unless you specifically want to change a value.
let taylor = "swift"

// MARK: - Type Annoation
// type inference: Swift is able to infer the type of something based on how you created it.
let newStr = "Hello, playground"

//  explicit about the type of your data rather than relying on Swift’s type inference, like this:
let album: String = "Reputation"
let year: Int = 1989
let height: Double = 1.78
let taylorRocks: Bool = true

