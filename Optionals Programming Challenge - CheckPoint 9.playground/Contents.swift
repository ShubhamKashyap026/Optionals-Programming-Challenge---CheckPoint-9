import Cocoa

// My Solution
func checkpoint9Challenge(intArray: [Int]?) -> Int {
//    guard let intArray = intArray else { return Int.random(in: 1...100)}
    
//    if let intArray = intArray {
//        if intArray.count > 0 {
//            return intArray[Int.random(in: 0...intArray.count+1)]
//        } else {
//            return Int.random(in: 1...100)
//        }
//    }
//    
//    return Int.random(in: 1...100)
    
    
    return intArray?.randomElement() ?? Int.random(in: 1...100)
    
}

print(checkpoint9Challenge(intArray: [1,12,14,56,80,94]))


// Solution only using guard statement
func checkpoint9ChallengeUsingGaurd(intArray: [Int]?) -> Int {
    // 1. Try to get a random element from the array
    // 2. If it fails (because the array is nil OR empty), immediately return the fallback
    guard let intArray = intArray?.randomElement() else {
        return Int.random(in: 1...100)
    }
    
    // 3. If we made it down here, randomItem is 100% safe to use
    return intArray
}

print(checkpoint9ChallengeUsingGaurd(intArray: [65,80,96,45,1,4,2,8,12]))
