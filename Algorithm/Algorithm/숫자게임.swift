import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
    var sortedA = a.sorted(by: >)
    var sortedB = b.sorted(by: >)
    var count = 0
    var indexB = 0

    for i in 0..<sortedA.count {
        if sortedA[i] < sortedB[indexB] {
            count += 1
            indexB += 1
        }
    }
    
    return count
}

print(solution([5,1,3,7])
