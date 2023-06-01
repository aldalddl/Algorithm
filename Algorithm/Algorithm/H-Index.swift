import Foundation

func solution(_ citations:[Int]) -> Int {
    var count = 0
    
    for i in 0...citations.count {
        for j in 0..<citations.count {
            if citations[j] >= i {
                count += 1
            }
        }
        
        if count <= i {
            break
        } else {
            count = 0
        }
    }

    return count
}

print(solution([3, 0, 6, 1, 5]))
