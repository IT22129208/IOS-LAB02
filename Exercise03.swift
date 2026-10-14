// Exercise 03: Dictionaries
// Source: SE4041 Practical 02[cite: 33, 34, 35]

// Step 1: Create a Dictionary
var dictMarks = [
    "Amal": 72,
    "Nimali": 65,
    "Ruwan": 48
]
print(dictMarks)

// Step 2 & 3: Retrieve Value and Nil-Coalescing
print(dictMarks["Amal"] as Any)
print(dictMarks["Amal"] ?? 0)
print(dictMarks["Kasun"] ?? 0)

// Step 4: Optional Binding
if let mark = dictMarks["Nimali"] {
    print("Nimali scored \(mark)")
} else {
    print("Student not found")
}

// Step 5: Add and Update Values
dictMarks["Sanduni"] = 90
dictMarks["Amal"] = 75
dictMarks["Ruwan"] = nil
print(dictMarks)

// Activity 3: Phone Book Dictionary
var phoneBook = [
    "Amal": "0711234567",
    "Nimali": "0772345678",
    "Ruwan": "0703456789",
    "Sanduni": "0754567890"
]

// 1. Add a new contact
phoneBook["Kasun"] = "0785678901"

// 2. Update one phone number
phoneBook["Amal"] = "0719999999"

// 3. Remove one contact
phoneBook["Ruwan"] = nil

// 4 & 5. Search for a contact using if let
let searchContact = "Nimali"
if let number = phoneBook[searchContact] {
    print("\(searchContact)'s phone number is \(number)")
} else {
    print("Contact not found")
}

let missingContact = "Ruwan"
if let number = phoneBook[missingContact] {
    print("\(missingContact)'s phone number is \(number)")
} else {
    print("Contact not found")
}