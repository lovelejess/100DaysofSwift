//: [Previous](@previous)

import Foundation

//https://www.hackingwithswift.com/100/8

// MARK: - Structs
struct Sport {
    var name: String
}

var tennis = Sport(name: "Tennis")
print(tennis.name)

let originalTennis = tennis.name

var lawnTennis = tennis.name
lawnTennis = "Lawn tennis"

print("Original Tennis: \(originalTennis)")
print("Original Tennis: \(tennis.name)")
print("Lawn Tennis: \(lawnTennis)")

// MARK: - Computed Property
struct Sports {
    var name: String
    var isOlympicSport: Bool

    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}

let chessBoxing = Sports(name: "Chessboxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)


// MARK: - Property Observers

struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}

var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100

// The most common time willSet is used is when you need to know the state of your program before a change is made.
// For example, SwiftUI uses willSet in some places to handle animations so that it can take a snapshot of the user interface before a change.
// When it has both the “before” and “after” snapshot, it can compare the two to see all the parts of the user interface that need to be updated.


// MARK: - Mutating Methods
// It’s possible to modify the properties of a struct, but only if that struct is created as a variable.
struct Person {
    var name: String

    mutating func makeAnonymous() {
        name = "Anonymous" // mutates the property name
    }
}

var person = Person(name: "Ed")
var clone = person
person.makeAnonymous()
print("anonymous: \(person.name)")
print(clone.name)



//: [Next](@next)
