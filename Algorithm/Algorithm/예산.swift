import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    var d = d.sorted()
    var budget = budget
    var count = 0

    for i in d {
        budget -= i
        guard budget >= 0 else { break }
        count += 1
    }
    
    return count
}

print(solution([2,2,3,3], 10))
