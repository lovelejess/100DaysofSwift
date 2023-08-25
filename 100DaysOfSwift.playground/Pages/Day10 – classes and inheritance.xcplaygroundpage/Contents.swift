//: [Previous](@previous)

import Foundation

// https://www.hackingwithswift.com/100/10

class Dog {
    var name: String
    var breed: String
    
    // The first difference between classes and structs is that classes never come with a memberwise initializer.
    // because classes allow for inheritance, memberwise initializers can cause confusion
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
    
    func makeNoise() {
        print("WOOF")
    }
    
    // MARK: - Deinitializers
    // The job of deinitializers is to tell us when a class instance was destroyed.
    // For structs this is fairly simple: the struct is destroyed when whatever owns it no longer exists.
    // So, if we create a struct inside a method and the methods ends, the struct is destroyed.
    // However, classes have complex copying behavior that means several copies of the class can exist in various parts of your program.
    // All the copies point to the same underlying data, and so it’s now much harder to tell when the actual class instance is destroyed – when the final variable pointing to it has gone away.
    // ARC
    deinit {
        print("BYE!")
    }
}

let poppy = Dog(name: "Poppy", breed: "Poodle")

// MARK: - Inheritance
// supports inheritance
class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
    
    override func makeNoise() {
        print("Yip")
    }
}

// MARK: - Final
// when you declare a class as being final, no other class can inherit from it.
final class Puppy {
    var name: String
    init(name: String) {
        self.name = name
    }
}

// MARK: - Reference Values
// classes are reference values
// they point to the same object in memory
// therefore if you change a value of a "copy" of a class, you mutate the original version as well
class Singer {
    var name = "Taylor Swift"
}

var singer = Singer()
print(singer.name)

var singerCopy = singer
singerCopy.name = "Justin Beiber"

print(singer.name)


// MARK: - Mutability
//if you have a constant class with a variable property, that property can be changed.
let dua = Singer()
dua.name = "Dua Lipa"
print("Name is :\(dua.name)")

struct Actor {
    var name: String
}

let margot = Actor(name: "Margot")
// not valid because margot is a constant
//margot.name = "Margot Robbie"
print("Name is: \(margot.name)")


//: [Next](@next)

