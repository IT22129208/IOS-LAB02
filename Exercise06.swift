// Exercise 06: Loops
// Source: SE4041 Practical 02[cite: 37, 38, 39, 40]

// Part A: for-in
for i in 1...5 {
    print("Week \(i)")
}

let names = ["Amal", "Nimali", "Ruwan"]
for name in names {
    print(name)
}

// Using enumerated()
for (index, name) in names.enumerated() {
    print("\(index): \(name)")
}

// Part B: while
var balance = 1000
var week = 0
while balance > 0 {
    balance -= 300
    week += 1
}
print("Ran out in week \(week)")

// Part C: repeat-while
var attempts = 0
repeat {
    attempts += 1
    print("Attempt \(attempts)")
} while attempts < 3

// break and continue
let markList = [72, -1, 65, 48, 90]
for m in markList {
    if m < 0 {
        continue
    }
    if m == 90 {
        break
    }
    print(m)
}

// Activity 6: Marks Processing
let rawMarks = [72, -1, 55, 43, 90, 88]
for m in rawMarks {
    if m < 0 {
        continue
    }
    if m == 90 {
        break
    }
    print("Valid mark processed: \(m)")
}