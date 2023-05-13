import Foundation

func solution(_ A:[Int], _ B:[Int]) -> Int
{
    var ans = 0
    var sortedA = A.sorted()
    var sortedB = B.sorted()
    
    sortedA.sort{ return $0 < $1 }
    sortedB.sort{ return $0 > $1 }
    
    for i in 0..<A.count {
        ans += sortedA[i] * sortedB[i]
    }
    
    return ans
}

print(solution([1, 4, 2], [5, 4, 4]))
