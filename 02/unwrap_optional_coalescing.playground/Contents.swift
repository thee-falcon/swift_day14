import UIKit

/*
 Certainly! In Swift, the ?? operator is called the Nil Coalescing Operator.
 It provides a concise way to handle optional values,allowing you to provide a default value when an optional is nil.
 The operator is used to unwrap an optional or provide a default value if the optional is nil.
 */

let captains = [
    "Enterprise" : "Picard",
    "Voyager" : "Janeway",
    "Defiant" : "Sisko"
]

// let new = captains["Serenity"] ?? "N/A"
// it the same code:
let new = captains["Serenity", default: "N/A"]

let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]
// Using Nil Coalescing Operator.
let favorite = tvShows.randomElement() ?? "None"

struct Book {
    let title: String
    let author: String?
}

let book = Book(title: "omakran", author: nil)
let author = book.author ?? "Omar"
print(author) // Will print: Omar

let input = ""
let number = Int(input) ?? 0
print(number) // Will print: 0

