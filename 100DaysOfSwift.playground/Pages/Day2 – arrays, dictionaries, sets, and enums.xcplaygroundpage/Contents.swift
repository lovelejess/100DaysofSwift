//: [Previous](@previous)

// https://www.hackingwithswift.com/100/2
import Foundation

// MARK: - Arrays
// ordered collection of items
// can contain duplicates
let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]

print("The second member is: \(beatles[2])")


// MARK: - Sets
// unordered
// unique

let colors = Set(["red", "green", "blue"])
let colorsWithDuplicatesStillRemovesDuplicates = Set(["red", "green", "blue", "red"])

print("Are these the same? \(colors == colorsWithDuplicatesStillRemovesDuplicates)")


// MARK: - Tuples
// Tuples allow you to store several values together in a single value
// can't add or remove items from tuple

// accessed by index or named parameters

var name = (first: "Taylor", last: "Swift")
print("My name is: \(name.first) \(name.last)")
print("My name is: \(name.0) \(name.1)")

// cannot change types
var nameAndAddress = (first: "Taylor", address: 1234)
//nameAndAddress.address = "1234"

// MARK: - Tuples vs Set vs Arrays
//If you need a specific, fixed collection of related values where each item has a precise position or name, you should use a tuple:
let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville")

//If you need a collection of values that must be unique or you need to be able to check whether a specific item is in there extremely quickly, you should use a set:
let set = Set(["aardvark", "astronaut", "azalea"])

//If you need a collection of values that can contain duplicates, or the order of your items matters, you should use an array:
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
//Arrays are by far the most common of the three types.

// MARK: - Dictionaries
let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]

for height in heights {
    print("Height for: \(height.key) is \(height.value)")
}

// MARK: - Dictionary Default Values
let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla",
]

for iceCream in favoriteIceCream {
    print("Favorite ice cream for: \(iceCream.key) is \(iceCream.value)")
}

// If key isn't valid, then use default
print("What is Charlotte's favorite Ice Cream? \((favoriteIceCream["Charlotte", default: "Unknown"]))")

// MARK: - Empty Collections
var teams = [String: String]()
teams = ["Paul": "Red"]
teams["Jess"] = "Green"
for team in teams {
    print("Team Leader: \(team.key), Color: \(team.value)")
}

var emptyArray = [Int]()
var emptySet = Set<String>()
var emptyArrayFullTypeName = Array<Int>()
var emptyDictionaryFullTypeName = Dictionary<String, Int>()

// MARK: - Enumerations

// loose types, different values but same meaning
let result = "failure"
let result2 = "failed"
let result3 = "fail"

// strict type - can only use one or the other
enum Result {
    case success
    case failure
}

let resultEnumFailure = Result.failure
let resultEnumSuccess = Result.success

// MARK: - Enumerations Associated Values
// Attach additional associated values to each use case

enum Activity {
    case bored
    case running
    case talking
    case singing
}

enum ActivityDetails {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case sining(song: String)
}
let jessActivity = ActivityDetails.talking(topic: "Birds")
print("Jess is \(jessActivity)")

// MARK: - Enumerations Raw Values
enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}

// grab me the value for three
let earth = Planet(rawValue: 3)
//: [Next](@next)
