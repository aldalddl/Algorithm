import Foundation

func solution(_ num:Int) -> Int {
    var temp = num
    var count = 0
    
    while temp > 1 {
        guard count < 500 else { return -1 }

        if temp % 2 == 0 {
            temp = temp / 2
        } else {
            temp = temp * 3 + 1
        }
        count += 1
    }
    
    return count
}

print(solution(16))
