//
//  main.swift
//  CALC
//
//  Created by Arthur Trampnau on 09/10/24.
//
func plus(a: Int, b: Int) -> Int {
    return a + b
}
func minus(a: Int, b: Int) -> Int {
    return a - b
}
func multiply(a: Int, b: Int) -> Int {
    return a * b
}
func divide(a: Double, b: Double) -> Double {
    return a / b
}
func hist(a: String, ent: String, b: String, x: String) -> String {
    return "\(a) \(ent) \(b) = \(x)"
}
var history: [String] = []
while true {
    print("Enter a number 1:")
    let a = readLine()
    print("Enter a number 2:")
    let b = readLine()
    print("Enter enter:")
    let ent = readLine()
    guard let a = a, let numA = Int(a) else {
        print("Error: First input is not a valid number.")
        continue
    }
    guard let b = b, let numB = Int(b) else {
        print("Error: Second input is not a valid number.")
        continue
    }
    if ent == "+" {
        let x = plus(a: numA, b: numB)
        print("answer:")
        print(x)
        history.append(hist(a: a, ent: ent!, b: b, x: String(x)))
    }
    else if ent == "-" {
        let x = minus(a: numA, b: numB)
        print("answer:")
        print(x)
        history.append(hist(a: a, ent: ent!, b: b, x: String(x)))
    }
    else if ent == "*" {
        let x = multiply(a: numA, b: numB)
        print("answer:")
        print(x)
        history.append(hist(a: a, ent: ent!, b: b, x: String(x)))
    }
    else if ent == "/" {
        guard numB != 0 else {
            print("Can't divide by zero")
            continue
        }
        let x = divide(a: Double(numA), b: Double(numB))
        print("answer:")
        print(x)
        history.append(hist(a: a, ent: ent!, b: b, x: String(x)))
    }
    else {
        print("Error: Unsupported operation.")
    }
        
    print("press 'm' to continue, 'q' to exit or 'h' to see history")
    let y = readLine()
    if y == "m" {
        continue
    }
    if y == "q" {
        break
    }
    if y == "h" {
        for i in history {
            print(i)
        }
        break
    }
}
