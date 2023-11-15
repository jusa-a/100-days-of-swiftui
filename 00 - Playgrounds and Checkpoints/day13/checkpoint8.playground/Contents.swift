import Cocoa

protocol Building {
    var rooms: Int { get set }
    var price: Int { get set }
    var agent: String { get }
    
    func salesSummary()
}

extension Building {
    func salesSummary() {
        print(
            """
            \(Self.self) Summary
            rooms: \(rooms)
            price: $\(price)
            agent: \(agent)
            """
        )
    }
}

struct House: Building {
    var rooms: Int
    var price: Int
    let agent: String
}

struct Office: Building {
    var rooms: Int
    var price: Int
    let agent: String
}

let house = House(rooms: 4, price: 500_000, agent: "Kimmo Kuu")
house.salesSummary()

let office = Office(rooms: 11, price: 3_500_000, agent: "Office Kim")
office.salesSummary()
