import Cocoa

// Constants and Variables

var name = "Ted"
name = "Rebecca"

let user = "Daphne"
print(user)

// Strings

let actor = "Tom Cruise 🏃‍♂️"

let quote = "He tapped a sign saying \"Believe\" and walked away."

let movie = """
A day in
the life of an
Apple engineer
"""

print(actor.count)

print(quote.hasPrefix("He"))
print(quote.hasSuffix("Away."))

// Integers

let score = 10
let higherScore = score + 10
let halvedScore = score / 2

var counter = 10
counter += 5

let number = 120
print(number.isMultiple(of: 3))

let id = Int.random(in: 1...1000)

// Decimals

let score2 = 3.0

// Booleans

let goodDogs = true
let gameOver = false

var isSaved = false
isSaved.toggle()

// Joining Strings

let name2 = "Taylor"
//let age = 26
let message = "I'm \(name2) and I'm \(age) years old."
print(message)

// Arrays

var colors = ["Red", "Green", "Blue"]
let numbers = [4, 8, 15, 16]
var readings = [0.1, 0.5, 0.8]

print(colors[0])
print(readings[2])

colors.append("Tartan")

colors.remove(at: 0)
print(colors.count)

print(colors.contains("Octarine"))

// Dictionaries

let employee = [
    "name": "Taylor",
    "job": "Singer"
]

print(employee["name", default: "Unknown"])
print(employee["job", default: "Unknown"])

// Sets

var numbers2 = Set([1, 1, 3, 5, 7])
print(numbers2)

numbers2.insert(10)

// Enums

enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}

var day = Weekday.monday
day = .friday

// Type annotations

var score3: Double = 0

let player: String = "Roy"
var luckyNumber: Int = 13
let pi: Double = 3.141
var isEnabled: Bool = true
var albums: [String] = ["Red", "Fearless"]
var user2: [String: String] = ["id": "@twostraws"]
var books: Set<String> = Set(["The Bluest Eye", "Foundation"])

var teams: [String] = [String]()
var clues = [String]()

enum UIStyle {
    case light, dark, system
}

var style: UIStyle = .light

// Conditions

let age = 16

if age < 12 {
    print("You can't vote")
} else if age < 18 {
    print("You can vote soon.")
} else {
    print("You can vote now.")
}

let temp = 26

if temp > 20 && temp < 30 {
    print("It's a nice day.")
}

// Switch statements

enum Weather {
    case sun, rain, wind
}

let forecast = Weather.sun

switch forecast {
case .sun:
    print("A nice day.")
case .rain:
    print("Pack an umbrella.")
default:
    print("Should be okay.")
}

// The ternary conditional operator

let age2 = 18
let canVote = age2 >= 18 ? "Yes" : "No"

// Loops

let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works on \(os).")
}

for i in 1...12 {
    print("5 x \(i) is \(5 * i)")
}

for i in 1..<13 {
    print("5 x \(i) is \(5 * i)")
}


var lyric = "Haters gonna"

for _ in 1...5 {
    lyric += " hate"
}

print(lyric)

var count = 10


while count > 0 {
    print("\(count)…")
    count -= 1
}

print("Go!")


let files = ["me.jpg", "work.txt", "sophie.jpg"]

for file in files {
    if file.hasSuffix(".jpg") == false {
        continue
    }

    print("Found picture: \(file)")
}

// Functions

func printTimesTables(number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(number: 5)

func rollDice() -> Int {
    Int.random(in: 1...6)
}

let roll = rollDice()
print(roll)

// Returning multiple values from functions

func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

let user3 = getUser()
print("Name: \(user3.firstName) \(user3.lastName)")

let (firstName, _) = getUser()
print("Name: \(firstName)")

// Customizing parameter labels

func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO, WORLD"
let result = isUppercase(string)


func printTimesTables(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5)

// Providing default values for parameters

func greet(_ person: String, formal: Bool = false) {
    if formal {
        print("Welcome, \(person)!")
    } else {
        print("Hi, \(person)!")
    }
}

greet("Tim", formal: true)
greet("Taylor")

// Handling errors in functions
//      1. which errors can happen
//      2. write a function that can throw errors
//      3. call it and handle any problems

enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }

    if password == "12345" {
        throw PasswordError.obvious
    }

    if password.count < 10 {
        return "OK"
    } else {
        return "Good"
    }
}

do {
    let result = try checkPassword("12345")
    print("Rating: \(result)")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error.")
}

// Closures

let sayHello = { (name: String) -> String in
    "Hi \(name)!"
}

//let team = ["Gloria", "Suzanne", "Tiffany", "Tasha"]
//
//let onlyT = team.filter({ (name: String) -> Bool in
//    return name.hasPrefix("T")
//})
//
//print(onlyT)

// Trailing closures and shorthand syntax

let team = ["Gloria", "Suzanne", "Tiffany", "Tasha"]

// filter() must be given a function that accepts one item from its array, and returns true if it should be in the returned array
let onlyT = team.filter {
    $0.hasPrefix("T")
}

print(onlyT)

// Structs

struct Album {
    let title: String
    let artist: String
    var isReleased = true

    func printSummary() {
        print("\(title) by \(artist)")
    }
    
    mutating func removeFromSale() {
        isReleased = false
    }
}

let red = Album(title: "Red", artist: "Taylor Swift")
print(red.title)
red.printSummary()

// Computed properties

//struct Employee {
//    let name: String
//    var vacationAllocated = 14
//    var vacationTaken = 0
//
////    CANNOT MODIFY THIS
////    var vacationRemaining: Int {
////        vacationAllocated - vacationTaken
////    }
//    
//    var vacationRemaining: Int {
//        get {
//            vacationAllocated - vacationTaken
//        }
//        set {
//            vacationAllocated = vacationTaken + newValue
//        }
//    }
//}

// Property observers

struct Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var game = Game()
game.score += 10
game.score -= 3

// Custom initializers

struct Player {
    let name: String
    let number: Int

    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
}

// Access control

// Use private for “don’t let anything outside the struct use this.”
// Use private(set) for “anything outside the struct can read this, but don’t let them change it.”
// Use fileprivate for “don’t let anything outside the current file use this.”
// Use public for “let anyone, anywhere use this.”

struct BankAccount {
    private(set) var funds = 0

    mutating func deposit(amount: Int) {
        funds += amount
    }

    mutating func withdraw(amount: Int) -> Bool {
        if funds > amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

// Static properties and methods

struct AppData {
    static let version = "1.3 beta 2"
    static let settings = "settings.json"
}

print(AppData.version)

// Classes

class Employee {
    let hours: Int

    init(hours: Int) {
        self.hours = hours
    }

    func printSummary() {
        print("I work \(hours) hours a day.")
    }
}

class Developer: Employee {
    func work() {
        print("I'm coding for \(hours) hours.")
    }
    
    override func printSummary() {
        print("I spend \(hours) hours a day searching Stack Overflow.")
    }
}

let novall = Developer(hours: 8)
novall.work()
novall.printSummary()


//class Vehicle {
//    let isElectric: Bool
//
//    init(isElectric: Bool) {
//        self.isElectric = isElectric
//    }
//}
//
//class Car: Vehicle {
//    let isConvertible: Bool
//
//    init(isElectric: Bool, isConvertible: Bool) {
//        self.isConvertible = isConvertible
//        super.init(isElectric: isElectric)
//    }
//}

class Singer {
    var name = "Adele"
}

var singer1 = Singer()
var singer2 = singer1
singer2.name = "Justin"
print(singer1.name)
print(singer2.name)

class User {
    let id: Int

    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive!")
    }

    deinit {
        print("User \(id): I'm dead!")
    }
}

for i in 1...3 {
    let user = User(id: i)
    print("User \(user.id): I'm in control!")
    
}

// Protocols

protocol Vehicle {
    var name: String { get }
        var currentPassengers: Int { get set }
    
        func estimateTime(for distance: Int) -> Int
        func travel(distance: Int)
}

struct Car: Vehicle {
    let name = "Car"
    var currentPassengers = 1
    
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }

    func travel(distance: Int) {
        print("I'm driving \(distance)km.")
    }
}

func commute(distance: Int, using vehicle: Vehicle) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("Too slow!")
    } else {
        vehicle.travel(distance: distance)
    }
}

let car = Car()
commute(distance: 100, using: car)

// Extensions

extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    // If you want to change a value directly rather than returning a new value, mark your method as mutating
    mutating func trim() {
            self = self.trimmed()
        }
    
    var lines: [String] {
            self.components(separatedBy: .newlines)
        }
}

var quote1 = "   The truth is rarely pure and never simple   "
quote1.trim()

let lyrics = """
But I keep cruising
Can't stop, won't stop moving
"""

print(lyrics.lines.count)

// Protocol extensions

extension Collection {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}

let guests = ["Mario", "Luigi", "Peach"]

if guests.isNotEmpty {
    print("Guest count: \(guests.count)")
}

// Optionals

let opposites = [
    "Mario": "Wario",
    "Luigi": "Waluigi"
]

let peachOpposite = opposites["Peach"]

if let marioOpposite = opposites["Mario"] {
    print("Mario's opposite is \(marioOpposite)")
}

// Unwrapping optionals with guard

func printSquare(of number: Int?) {
    guard let number = number else {
        print("Missing input")
        return
    }

    print("\(number) x \(number) is \(number * number)")
}

// Nil coalescing

let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]
let favorite = tvShows.randomElement() ?? "None"

let input = ""
let number2 = Int(input) ?? 0
print(number2)

// Optional chaining

let names = ["Arya", "Bran", "Robb", "Sansa"]
let chosen = names.randomElement()?.uppercased()
print("Next in line: \(chosen ?? "No one")")

// Optional try?

enum UserError: Error {
    case badID, networkFailed
}

func getUser(id: Int) throws -> String {
    throw UserError.networkFailed
}

if let user = try? getUser(id: 23) {
    print("User: \(user)")
}

