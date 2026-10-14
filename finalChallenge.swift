// Final Practical Task: Student Performance Manager
// Source: SE4041 Practical 02[cite: 40, 41, 42, 43, 44]

// Part A: Store Student Marks
var studentMarks: [String: Int] = [
    "Amal": 72,
    "Nimali": 45,
    "Ruwan": 68,
    "Sanduni": 90,
    "Kasun": 38
]

print("STUDENT PERFORMANCE")

// Part B & C: Display All Students and Determine Grade using switch and ranges
var passedStudents: [String] = []
var gradesAwarded: Set<String> = []
var totalMarks = 0

// Sort keys alphabetically for clean presentation
let sortedNames = studentMarks.keys.sorted()

for name in sortedNames {
    guard let mark = studentMarks[name] else { continue }
    totalMarks += mark
    
    // Determine Grade
    let grade: String
    switch mark {
    case 80...100:
        grade = "A"
    case 75..<80:
        grade = "A-"
    case 70..<75:
        grade = "B+"
    case 65..<70:
        grade = "B"
    case 60..<65:
        grade = "B-"
    case 55..<60:
        grade = "C+"
    case 45..<55:
        grade = "C"
    case 40..<45:
        grade = "C-"
    case 0..<40:
        grade = "F"
    default:
        grade = "Invalid"
    }
    
    gradesAwarded.insert(grade)
    
    // Part D: Check if passed (Mark > 50 or >= 50 based on criteria)
    if mark >= 50 {
        passedStudents.append(name)
    }
    
    print("\(name) - \(mark) - \(grade)")
}

// Part D: Print Passed Students
print("\nPassed Students:")
for student in passedStudents {
    print(student)
}

// Part E: Print Unique Grades Awarded
print("\nGrades Awarded:")
print(Array(gradesAwarded).sorted())

// Part F: Calculate Class Average
let classAverage = Double(totalMarks) / Double(studentMarks.count)
print("\nClass Average: \(classAverage)")

// Part G: Highest and Lowest Marks
let allMarkValues = Array(studentMarks.values)
if let highest = allMarkValues.max(), let lowest = allMarkValues.min() {
    print("Highest Mark: \(highest)")
    print("Lowest Mark: \(lowest)")
}

// Additional Challenge: Search for a Student & Count Passes/Fails
print("\n--- Additional Challenge ---")
let searchName = "Amal"
if let mark = studentMarks[searchName] {
    print("\(searchName)'s mark is \(mark)")
} else {
    print("Student not found.")
}

var passCount = 0
var failCount = 0
for mark in studentMarks.values {
    if mark >= 50 {
        passCount += 1
    } else {
        failCount += 1
    }
}
print("Passed: \(passCount)")
print("Failed: \(failCount)")