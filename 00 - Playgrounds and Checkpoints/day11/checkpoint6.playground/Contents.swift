import Cocoa

struct Car {
    let model: String
    let seats: Int
    private(set) var currentGear = 1 {
        willSet {
            print("switching gear from \(currentGear) to \(newValue)")
        }
        didSet {
            print("gear switched to \(currentGear)")
        }
        
    }
    
    mutating func switchGear(_ gear: Int) {
        if gear > 0 && gear <= 10 {
            currentGear = gear
        } else {
            print("invalid gear")
        }
    }
}

var testCar = Car(model: "Polo", seats: 5)
testCar.switchGear(10)
testCar.switchGear(3)
print(testCar)
