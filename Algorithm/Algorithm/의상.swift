import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var dict: [String:Int] = [:]
    
    for cloth in clothes {
        let key = cloth[1]
        if !dict.keys.contains(key) {
            dict[key] = 0
        }
        dict[key]? += 1
    }
    
    var count = 1
    for i in dict.values {
        count *= i+1
    }
    return count - 1
}

print(solution([["yellow_hat", "headgear"], ["blue_sunglasses", "eyewear"], ["green_turban", "headgear"]]))
