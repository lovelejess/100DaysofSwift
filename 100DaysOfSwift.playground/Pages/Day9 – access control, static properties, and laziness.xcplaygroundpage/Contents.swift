//: [Previous](@previous)

import Foundation
//https://www.hackingwithswift.com/100/9

// MARK: - Structs with Memberwise Init
struct User {
    var username: String
}

let user = User(username: "Jess")
print(user.username)



// MARK: - Structs with Custom Init
struct UserWithInit {
    var username: String
    
    init() {
        username = "Anonymous"
    }
}

let anonymous = UserWithInit()
print(anonymous.username)


// MARK: Structs with Memberwise Init and Custom Init

struct Employee {
    var name: String
    var yearsActive = 0
}

extension Employee {
    init() {
        self.name = "Anonymous"
        print("Creating an anonymous employee…")
    }
}

// creating a named employee now works
let roslin = Employee(name: "Laura Roslin")

// as does creating an anonymous employee
let anon = Employee()


// MARK: - Self is a constant

struct Student {
    var name: String
    var bestFriend: String

    init(name: String, bestFriend: String) {
        print("Enrolling \(name) in class…")
        self.name = name
        self.bestFriend = bestFriend
    }
}

// MARK: - Lazy Properties
struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

struct Person {
    var name: String
    lazy var familyTree = FamilyTree() // only creates it when accessed!

    init(name: String) {
        self.name = name
    }
}

var ed = Person(name: "Ed")
ed.familyTree //access family tree


//: [Next](@next)
