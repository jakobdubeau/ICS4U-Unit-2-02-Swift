/*
* The log program takes log length and gives you the amount of logs that can fit in a truck.
*
* @author Jakob
* @version 1.0
* @since 2020-11-22
*/

import Foundation

// Making an error case.
enum MyError: Error {
    case invalidInteger(String)
}

func factorial(someInt: Int) -> Int {
    // Variables.
    var returnValue: Int = 0

    if someInt == 1 {
        returnValue = 1
    } else if someInt == 0 {
        returnValue = 1
    } else if someInt < 0 {
        returnValue = -1
    } else {
        returnValue = factorial(someInt: (someInt - 1)) * someInt
    }
    return returnValue

}

var number: Int = 0

// Inputs
print("Enter the number: ")

do {

    if let numberInput: Int = Int(readLine()!) {
        number = numberInput
    } else {
        throw MyError.invalidInteger("Error")
    }

    let factorialResult: Int = (factorial(someInt: number))
    if factorialResult < 0 {
        print("No negative numbers")
    } else {
        print("The factorial of entered number is: ", factorialResult)
    }
} catch {
    print("That was an invalid input")
}
