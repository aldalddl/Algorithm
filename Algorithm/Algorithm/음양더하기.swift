import Foundation

func solutions(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    var sum = 0
    
    for i in 0..<signs.count {
        if signs[i] {
            sum += absolutes[i]
        } else {
            sum -= absolutes[i]
        }
    }
    
    return sum
}

print(solutions([4,7,12], [Bool][true,false,true]))

