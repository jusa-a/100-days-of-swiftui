import Cocoa

enum RootError: Error {
    case outOfBounds, noRoot
}

func findSqrt(_ x: Int) throws -> Int {
    if x < 1 || x > 10_000 {
        throw RootError.outOfBounds
    }
    
    for i in 1...100 {
        if i * i == x {
            return (i)
        }
    }
    
    throw RootError.noRoot
}

do {
    let result = try findSqrt(4)
    print(result)
} catch RootError.outOfBounds {
    print("out of bounds")
} catch RootError.noRoot {
    print("no root")
}
