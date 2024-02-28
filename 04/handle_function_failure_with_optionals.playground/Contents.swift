import UIKit

/*
 In Swift, optionals are a powerful feature for handling the potential failure of a function or operation.
 When a function might not return a value or could encounter an error, you can use optionals to represent the absence of a value or an error condition
 */

// 1. Returning Optional:
func    divide(_ numerator: Int, by denominator: Int) -> Int? {
    guard denominator != 0 else {
        return nil // returning nil to indicate failure (division by zero)
    }

    return numerator / denominator
}

if let  result = divide(10, by: 2) {
    print("Result: \(result)")
} else {
    print("Devision Falid!")
}

// 2. Throwing Errors:
enum DivisionError : Error {
    case    divisionByZero
}

func    divideT(_ numerator: Int, by denominator: Int) throws -> Int {
    guard   denominator != 0 else {
        throw DivisionError.divisionByZero
    }

    return numerator / denominator
}

do {
    let result = try divideT(10, by: 0)
    print("Result: \(result)")
} catch DivisionError.divisionByZero{
    print("Division by zero ERROR!")
} catch {
    print("Uknowning ERRRO!")
}

// ##################################### another Example ###########################################:

// enumeration UserError that conforms to the Error protocol.
enum    UserError: Error {
    case    badId, networkFaild
}

// The function is marked with throws, indicating that it can throw errors.
// In this example, the function always throws a UserError.networkFaild error.
func    getUser(id: Int) throws -> String {
    throw   UserError.networkFaild
}

// => Error Handling with Optional Try:

// Attempts to call the getUser function with an id of 23 using try?.
// If an error occurs, the result is nil. If successful, the result is assigned to the user constant.
// The if let statement checks if user is not nil and prints the user information.
if let  user = try? getUser(id: 23) {
    print("User: \(user)")
}

// => Error Handling with Nil Coalescing Operator:

let user = (try? getUser(id: 23)) ?? "Anonymous"
print(user)


/*
 Both try? constructs are used to handle potential errors from the getUser function without explicitly handling the error.
 If an error occurs during the function call, the result is nil.
 The ?? operator is used to provide a default value ("Anonymous") in case of an error or nil result.
 The program demonstrates two different approaches to handle errors with try? and the nil coalescing operator.
 */
