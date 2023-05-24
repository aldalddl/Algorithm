import Foundation

func solution(_ k:Int, _ tangerine:[Int]) -> Int {
    var dict = [Int:Int]()
    var count = 0
    
    for i in 0..<tangerine.count {
        var key = tangerine[i]
        if !dict.keys.contains(key) {
            dict[key] = 0
        }
        dict[key]! += 1
    }
    
    let sorted = dict.values.sorted(by: >)
    
    for i in 0..<sorted.count {
        count += sorted[i]
        if count >= k {
            return i + 1
        }
    }
    
    return k
}

print(solution(6, [1, 3, 2, 5, 4, 5, 2, 3]))

