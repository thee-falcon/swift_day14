import UIKit

/*
 
 In Swift, optionals are a powerful tool for dealing with missing data.
 They act as containers that can either hold a value or be 'nil', signifying the absence of a value.
 This helps prevent crashes and unexpected behavior when working with data that may not always be available.
 
 */

let opposites = ["Name": "Omar", "Age": "24"]

// Unwrap:
if let  nameOpposite = opposites["Name"] {
    print("Name's opposite is: \(nameOpposite) ")
}


func    square(number: Int) -> Int {
    number * number
}

/*
 ?: This question mark makes the Int type optional. This means the variable can either:
 Hold an actual Int value (e.g., 10, -5, etc.).
 Be nil, indicating the absence of a valid integer value.
 */

// Declare Optional Variables:
var number: Int? = nil
// Unwrap:
if let number = number {
    print(square(number: number))
}
