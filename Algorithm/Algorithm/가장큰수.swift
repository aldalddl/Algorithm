import Foundation

func solution(_ numbers:[Int]) -> String {
    var sortedNum = numbers.map{ String($0) }
    
    sortedNum.sort{
        return $0 + $1 > $1 + $0
    }
    
    let answer = sortedNum.joined()
    if let temp = Int(answer) { return String(temp) }
    return answer
}

print(solution([3, 30, 34, 5, 9]))
