import Foundation

func solution(_ arr:[Int], _ query:[Int]) -> [Int] {
    var result = arr
    for i in 0..<query.count {
        var index = query[i]
        if index % 2 == 0 {
            result.remove(at: index+1)
        } else {
            result.remove(at: index-1)
        }
    }
    return result
}

print(solution([0, 1, 2, 3, 4, 5], [4, 1, 2]))
