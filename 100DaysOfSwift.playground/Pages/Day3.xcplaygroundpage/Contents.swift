//: [Previous](@previous)

import Foundation

//: [Next](@next)

// MARK: - Arithmetic Operators
let firstScore = 12
let secondScore = 4
//We can add and subtract using + and -:

let total = firstScore + secondScore
let difference = firstScore - secondScore
//And we can multiply and divide using * and /:

let product = firstScore * secondScore
let divided = firstScore / secondScore
//Swift has a special operator for calculating remainders after division: %. It calculates how many times one number can fit inside another, then sends back the value that’s left over.

//For example, we set secondScore to 4, so if we say 13 % secondScore we’ll get back one, because 4 fits into 13 three times with remainder one:
let remainder = 13 % secondScore

// MARK: - Operator Overloading
let meaningOfLife = 42
let doubleMeaning = 42 + 42

//But + also joins strings, like this:
let fakers = "Fakers gonna "
let action = fakers + "fake"

//You can even use + to join arrays, like this:
let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf

// MARK: - Compound Assignment Operators
var score = 95
score -= 5

//Similarly, you can add one string to another using +=:
var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"


// MARK: - Comparison Operators
//There are two operators that check for equality: == checks two values are the same, and != (pronounced “not equals”) checks two values are not the same:
firstScore == secondScore
firstScore != secondScore

//There are four operators for comparing whether one value is greater than, less than, or equal to another. These are just like in mathematics:
firstScore < secondScore
firstScore >= secondScore

//Each of these also work with strings, because strings have a natural alphabetical order:
"Taylor" <= "Swift"


// MARK: - Conditionals

let firstCard = 11
let secondCard = 10
if firstCard + secondCard == 2 {
    print("Aces – lucky!")
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}

let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}

if age1 > 18 || age2 > 18 {
    print("At least one is over 18")
}


// MARK: - Ternary

print(firstCard == secondCard ? "Cards are the same" : "Cards are different")

// same as
if firstCard == secondCard {
    print("Cards are the same")
} else {
    print("Cards are different")
}

// MARK: - Switch
let weather = "sunny"

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough
default:
    print("Enjoy your day!")
}

// MARK: - Range Operator
// The half-open range operator, ..<, creates ranges up to but excluding the final value
// 1..<5 contains the numbers 1, 2, 3, and 4,
// and the closed range operator, ..., creates ranges up to and including the final value.
//  1...5 contains the numbers 1, 2, 3, 4, and 5.
switch score {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}
