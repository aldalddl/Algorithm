import Foundation

func solution(_ numbers:[Int]) -> Int {
    var sum = (9 * 10) / 2

    for i in 0..<numbers.count {
        sum -= numbers[i]
    }

    return sum
}

print(solution([5,8,4,0,6,7,9]))
