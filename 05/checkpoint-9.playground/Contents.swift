import UIKit

/*
 Your challenge is this: write a function that accepts an optional array of integers, and returns one randomly.
 If the array is missing or empty, return a random number in the range 1 through 100.

 If that sounds easy, it’s because I haven’t explained the catch yet: I want you to write your function in a single line of code.
 No, that doesn’t mean you should just write lots of code then remove all the line breaks – you should be able to write this whole thing in one line of code.
 */

func getRandomNumber(from numbers: [Int]?) -> Int {
    // To solve this problem, I used Ternary Operator (? :):
    return numbers?.isEmpty == false ? numbers!.randomElement()! : Int.random(in: 1...100)
}



// ####################################### Explanation of this line of code ################################################

/*
 => Ternary Operator (? :):

    numbers?.isEmpty == false ?
    Checks if the optional array numbers is not empty (isEmpty == false).
    The condition is part of the ternary operator, which is used for conditional execution.
 
 => If True - Return Random Element from Array:

    numbers!.randomElement()!
    If the array is not empty, it returns a random element from the array.
    The force unwrapping (!) is used because the condition ensures that the array is not empty.
 
 => If False - Return Random Number:
    : Int.random(in: 1...100)
    If the array is missing or empty, it returns a random number in the range 1 through 100 using Int.random(in: 1...100).
 */


/*
 Execution Flow:
 
 If the optional array numbers is not nil and is not empty, it returns a random element from the array.
 If the array is missing or empty, it generates and returns a random number in the specified range (1 through 100).
 */

// ##############################################################################################################################
