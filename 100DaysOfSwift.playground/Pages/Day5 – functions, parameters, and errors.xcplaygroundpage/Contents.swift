//: [Previous](@previous)

import Foundation

//https://www.hackingwithswift.com/100/5


func getUser() -> (first: String, last: String) {
    (first: "Taylor", last: "Swift")
}

let user = getUser()
print(user.first)

// MARK: - Parameter Labels
func sayHello(to name: String) {
    print("Hello, \(name)!")
}
sayHello(to: "Taylor")

func greet(_ person: String) {
    print("Hello, \(person)!")
}
greet("Taylor")

// MARK: - Default Parameters
func greet(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}
//That can be called in two ways:
greet("Taylor")
greet("Taylor", nicely: false)

// MARK: - Variadic Functions
func square(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}
square(numbers: 1, 2, 3, 4, 5)

// MARK: - Throws
enum PasswordError: Error {
    case obvious
}
func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}


do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

// MARK: - Inout
// All parameters passed into a Swift function are constants, so you can’t change them.
func doubleInPlace(number: inout Int) {
    number *= 2 //modify the parameter in place
}

var myNum = 10
doubleInPlace(number: &myNum)


//: [Next](@next)
