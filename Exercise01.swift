// Exercise 01: Arrays
// Source: SE4041 Practical 02[cite: 29, 30, 31]

// Step 1: Create an Array
var marks = [72, 65, 48, 90, 55]
print(marks)

// Step 2: Access Array Elements
print(marks[0])
print(marks[2])
print(marks[4])

// Step 3: Useful Array Properties
print(marks.count)
print(marks.isEmpty)
print(marks.first as Any)
print(marks.last as Any)

// Step 4: Modify an Array
marks[2] = 52
print(marks)
marks.append(88)
marks.insert(60, at: 1)
print(marks)
marks.removeLast()
marks.remove(at: 1)
print(marks)

// Step 5: Useful Array Methods
let sampleMarks = [72, 65, 48, 90, 55]
print(sampleMarks.max()!)
print(sampleMarks.min()!)
print(sampleMarks.contains(90))
print(sampleMarks.sorted())
print(sampleMarks.sorted(by: >))

let total = sampleMarks.reduce(0, +)
print(total)
let average = Double(total) / Double(sampleMarks.count)
print(average)

// Activity 1: Module Names Array
var modules = ["Mobile Application Design & Development", "Interactive Media Design", "Game Technology", "Enterprise Application Development", "Professional Practice"]
print("All modules: \(modules)")
print("First module: \(modules.first ?? "")")
print("Last module: \(modules.last ?? "")")
modules.append("Cloud Computing")
print("Number of modules: \(modules.count)")
print("Contains SE4041: \(modules.contains("SE4041"))")