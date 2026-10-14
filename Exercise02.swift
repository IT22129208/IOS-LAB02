// Exercise 02: Sets
// Source: SE4041 Practical 02[cite: 31, 32, 33]

// Step 1: Create a Set
var towns: Set = ["Malabe", "Kandy", "Galle"]
print(towns)

// Step 2: Insert Values
towns.insert("Jaffna")
towns.insert("Kandy")
print(towns)
print(towns.count)

// Step 3: Check Membership
print(towns.contains("Kandy"))
print(towns.contains("Colombo"))

// Step 4: Remove an Item
towns.remove("Galle")
print(towns)

// Step 5: Set Operations
let swiftClass: Set = ["Amal", "Nimali", "Ruwan"]
let kotlinClass: Set = ["Nimali", "Ruwan", "Sanduni"]

print(swiftClass.union(kotlinClass).sorted())
print(swiftClass.intersection(kotlinClass).sorted())
print(swiftClass.subtracting(kotlinClass).sorted())
print(swiftClass.symmetricDifference(kotlinClass).sorted())

// Activity 2: Student Sets
let mobileDevelopmentStudents: Set = ["Amal", "Nimali", "Ruwan", "Kasun"]
let gameTechnologyStudents: Set = ["Nimali", "Ruwan", "Sanduni", "Tharindu"]

print("1. All students union: \(mobileDevelopmentStudents.union(gameTechnologyStudents).sorted())")
print("2. Both modules intersection: \(mobileDevelopmentStudents.intersection(gameTechnologyStudents).sorted())")
print("3. Only Mobile Development: \(mobileDevelopmentStudents.subtracting(gameTechnologyStudents).sorted())")
print("4. Only one of the modules (symmetric difference): \(mobileDevelopmentStudents.symmetricDifference(gameTechnologyStudents).sorted())")