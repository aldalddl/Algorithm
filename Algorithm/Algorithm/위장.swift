import Foundation

let clothes = [["yellow_hat", "headgear"], ["blue_sunglasses", "eyewear"], ["green_turban", "headgear"]]

func solution(_ clothes:[[String]]) -> Int {
    var dict: [String: Int] = [:] // 종류 별 옷의 개수
    
    for cloth in clothes {
        var key = cloth[1]
        
        if !dict.keys.contains(key) {
            dict[key] = 0
        }
        
        dict[key]? += 1
    }
    
    var count = 1
    
    for i in dict.values {
        count *= i + 1
    }
    
    return count - 1
}

print(solution(clothes))
