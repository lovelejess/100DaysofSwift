//: [Previous](@previous)

// https://www.hackingwithswift.com/100/11
import Foundation

// MARK: - Protocols
protocol Purchaseable {
    var name: String { get set }
}

struct Book: Purchaseable {
    var name: String
    var author: String
}

struct Movie: Purchaseable {
    var name: String
    var actors: [String]
}

struct Coffee: Purchaseable {
    var name: String
    var strength: Int
}

func buy(_ item: Purchaseable) {
    print("I'm buying \(item.name)")
}

// MARK: - Protocol Inheritance

protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

// one single protocol that inherits all three
protocol Employee: Payable, NeedsTraining, HasVacation { }


// MARK: - Extensions
extension Int {
    func squared() -> Int {
        return self * self
    }
    
    // can only have computed properties, not stored
    var isEven: Bool {
        return self % 2 == 0
    }
}


// MARK: - Collections

// you can create "concrete" implementations in protocols via extensions
extension Collection {
    func summarize() {
        print("There are \(count) of us:")

        for name in self {
            print(name)
        }
    }
}

//: [Next](@next)
