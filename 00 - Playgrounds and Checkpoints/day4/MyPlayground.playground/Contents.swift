import Cocoa

var numbers = [String]()
numbers.append("one")
numbers.append("two")
numbers.append("three")
numbers.append("four")
numbers.append("four")

print(numbers.count)

var unique = Set(numbers)

print(unique.count)
