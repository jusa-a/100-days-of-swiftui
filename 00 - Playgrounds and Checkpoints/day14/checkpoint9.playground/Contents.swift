import Cocoa

func randomInt(_ a: [Int]? = nil) -> Int {
    a?.randomElement() ?? Int.random(in: 1...100)
}

randomInt()
randomInt([111, 112, 113, 114, 115])


