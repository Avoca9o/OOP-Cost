import Foundation

let start = Date()

for _ in 0...100000000 {}

let finish = Date()
let elapsed = finish.timeIntervalSince(start) * 1000

let result = "\(elapsed)\n"

print(result)
