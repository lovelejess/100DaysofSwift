//: [Previous](@previous)

//https://www.hackingwithswift.com/100/4
import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

// MARK: - For
let count = 1...10
for number in count {
    print("Number is \(number)")
}

print("Players gonna ")

for _ in 1...5 {
    print("play")
}

// MARK: - While
var number = 1
while number <= 20 {
    print(number)
    number += 1
}

print("Ready or not, here I come!")

// MARK: - Repeat / do while
let newNumber = 1
repeat {
    print(newNumber) // this block will always get executed!
    number+=1
} while number <= 20

print("Ready or not, here I come!")

// MARK: - Break
var countDown = 10
while countDown >= 0 {
    print(countDown)

    if countDown == 4 {
        print("I'm bored. Let's go now!")
        break // exits of out loop regardless of while
    }

    countDown -= 1
}


// MARK: - OuterLoops

for i in 1...10 {
    for j in 1...10 {
        let product = i*j
        print ("\(i) * \(j) is \(product)")
    }
}

outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")

        if product == 50 {
            print("It's a bullseye!")
            break outerLoop // exits all of the loops
        }
    }
}

// MARK: - Continue
for i in 1...10 {
    if i % 2 == 1 {
        continue // skips this block and continues to print then to outerloop
    }

    print(i)
}
