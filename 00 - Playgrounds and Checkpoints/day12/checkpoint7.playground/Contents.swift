import Cocoa

class Animal {
    let legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
}

let animal = Animal(legs: 2)


class Dog: Animal {
    func speak() {
        print("generic dog barking")
    }
}

let dog = Dog(legs: 4)
dog.speak()

final class Corgi: Dog {
    override func speak() {
        print("corgi dog barking")
    }
}

final class Poodle: Dog {
    override func speak() {
        print("poodle dog barking")
    }
}

let corgi = Corgi(legs: 4)
corgi.speak()
let poodle = Poodle(legs: 3)
poodle.speak()


class Cat: Animal {
    let isTame: Bool

    func speak() {
        print("meow")
    }
    
    init(legs: Int, isTame: Bool) {
        self.isTame = isTame
        super.init(legs: legs)
    }
}

let cat = Cat(legs: 4, isTame: true)
cat.speak()


final class Persian: Cat {
    override func speak() {
        print("persian meow")
    }
}

final class Lion: Cat {
    override func speak() {
        print("roar")
    }
}

let persian = Persian(legs: 4, isTame: true)
persian.speak()
let lion = Lion(legs: 4, isTame: false)
lion.speak()
