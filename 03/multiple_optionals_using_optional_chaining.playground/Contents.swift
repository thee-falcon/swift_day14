import UIKit

/*
 Using optional chaining and optional binding in this way helps you safely navigate and interact with properties and methods in a chain of optional values without
 risking runtime crashes due to nil values.
 */

let names = ["Omar", "Said", "Anouar", "Oussama"]

let chosen = names.randomElement()?.uppercased() ?? "No One"
print("Next in line: \(chosen)")


struct  Book {
    let title: String
    let author: String?
}

var book: Book? = nil

// is meaning the line of code: if there is  a book and author and first then uppercased the author otherwise do A.
// if book is nil, or author is nil, or first is nil), the entire expression evaluates to nil.
let author = book?.author?.first?.uppercased() ?? "A"
print(author) // will print A
