import Foundation

class Base {
    func doNothing() {}
}

class Derived : Base {
    override func doNothing() {}
}

let obj: Base = Derived()

let start = Date()

for _ in 0...100000000 {
    obj.doNothing()
}

let finish = Date()
let elapsed = finish.timeIntervalSince(start) * 1000

let result = "\(elapsed)\n"

print(result)
