class Base {
    func doNothing() {}
}

class Derived : Base {
    override func doNothing() {}
}

let obj: Base = Derived()
for _ in 0...100000000 {
    obj.doNothing()
}
