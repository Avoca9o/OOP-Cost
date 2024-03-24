import Foundation

class Base {}

let start = Date()

for _ in 0...100000000 {
    let _ = Base()
}

let finish = Date()
let elapsed = finish.timeIntervalSince(start) * 1000

let result = "\(elapsed)\n"

print(result)
