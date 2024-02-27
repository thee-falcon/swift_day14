import UIKit

/*
 The guard let statement is used in Swift for early exits or to ensure that a specific condition is met, unwrapping an optional, and providing a clear, concise way
 to handle failures.
 It is often used to validate the presence of a value and, if the condition is not satisfied, to exit the current scope (function, method, or loop) gracefully
 */

/*
 Steps:
 
 Optional Value:

 optionalValue is the optional variable or expression that you want to unwrap and check.
 Unwrapping:

 guard let unwrappedValue = optionalValue attempts to unwrap the optionalValue.
 If optionalValue is non-nil, the unwrapped value is assigned to the constant unwrappedValue.
 If optionalValue is nil, the else block is executed.
 Else Block:

 The else block contains the code to execute if the optional value is nil.
 This block must exit the current scope, such as returning from the enclosing function, throwing an error, or breaking out of a loop.
 The else block ensures that if the optional condition is not met, you handle the failure gracefully and exit early.
 Code Outside the Guard Statement:

 If the optional value is successfully unwrapped, the code outside the guard statement is executed.
 The unwrapped value (unwrappedValue) is now available in this scope for further use.
 
 */

func    printSquare(number: Int?) {
    guard   let number = number else {
        print("Missing input")
        return
    }
    print("\(number) * \(number) = \(number * number)")
}

printSquare(number: nil)
