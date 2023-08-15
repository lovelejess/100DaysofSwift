//: [Previous](@previous)

import Foundation

//https://www.hackingwithswift.com/100/6

// You can create a function and assign it to a variable
// call that function using that variable
// and even pass that function into other functions as parameters.
// Functions used in this way are called closures, and although they work like functions they are written a little differently.


// WHY: to store functionality – to be able to say “here’s some work I want you to do at some point, but not necessarily now.”
let driving = {
    print("I'm driving in my car")
}

driving()


let drivingTo = { (place: String) in
    print("I'm going to \(place) in my car")
}
drivingTo("London")


let drivingWithReturn = { (place: String) in
    return "I am driving to \(place) in my car"
}
let message = drivingWithReturn("London")
print(message)


let payment = { () -> Bool in
    print("Paying an anonyous person...")
    return true
}
if payment() == true {
    print("Completed payment")
}


// MARK: - Closures as Parameters
func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}
travel(action: driving)

func travelTo(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}

// allows you to pass in closure with parameter
travelTo(action: { (place: String) in
    print("I am traveling to \(place) in my car")
})

// MARK: - Trailing Closure Syntax

travel() {
    print("I'm driving in my car")
}

travel {
    print("I'm driving in my car")
}

//: [Next](@next)
