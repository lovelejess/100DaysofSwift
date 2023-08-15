//: [Previous](@previous)

import Foundation

//https://www.hackingwithswift.com/100/7

// MARK: - Closures as Parameters When They Accept Parameters
func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print(" have arrived")
}

travel { (place: String) in
    print("I'm going to \(place) in my car")
}


// MARK: - Function with Closure
func fetchData(action: (String) -> Void) {
    print("Fetching the data ...")
    action("COMPLETED")
}

// execute the above function
// once you're done then execute the closure with the parameter from the function
fetchData { (myData: String) -> Void in
    print("I have received the data and the status is: \(myData)")
}


// MARK: - Function with Parameter and Closure
func fix(item: String, payBill: (Int) -> Void) {
    print("I've fixed your \(item)")
    payBill(450)
}

fix(item: "roof") { (bill: Int) in
    print("Great! We agreed to pay $\(bill) to fix the item, correct?")
}

// MARK: - Using closures as parameters when they return values
func fetchNewData(for type: String, completion: (String) -> String) {
    print("------")
    print("Fetching data for: \(type)...")
    let completed = completion(type)
    print(completed)
    print("Exiting ...")
}

fetchNewData(for: "interview") { (type: String) -> String in
    return "Data has been received for: \(type)"
}

// MARK: - Example of using a closure
func reduce(_ values: [Int], using closure: (Int, Int) -> Int) -> Int {
    var current = values[0]

    for value in values[1...] {
        current = closure(current, value)
    }
    return current
}

let total = reduce([1,2,3,4,5,6]) { (a: Int, b: Int) -> Int in
    a+b
}
print(total)

let numbers = [1,2,3,4,5,6]
let sum = reduce(numbers, using: +)
print(sum)

let multiply = reduce(numbers, using: *)
print(multiply)

// MARK: - Shorthand parameter names
func travel(to location: String, completion: (String) -> String) {
    print("I am going to travel to: \(location)")
    completion(location)
    print("I have arrived")
}

travel(to: "London") { (location: String) -> String in
    return "Enroute to \(location)"
}

// Shorthand terminology for above due to type inference
travel(to: "Shortcut London") { location in
    return "Enroute to \(location)"
}

// Shorthand terminology for above due to type inference
travel(to: "Shortcut London with Parameter Index") {
    return "Enroute to \($0)"
}


// MARK: - Closures with Multiple Parameters

func travel(action: (String, Int) -> String) {
    print("I'm getting ready to go")
    let description = action("London", 50)
    print(description)
    print("I have arrived")
}

travel { (location: String, time: Int) -> String in
    return "I am enroute to \(location) and will be there in \(time) minutes"
}

travel {
    return "I am enroute to \($0) and will be there in \($1) minutes"
}
//: [Next](@next)
