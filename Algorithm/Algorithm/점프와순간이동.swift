import Foundation

func solution(_ n:Int) -> Int
{
    var cost = 0
    var distance = n
    
    while distance > 0 {
        if distance % 2 == 0 { // 순간이동
            distance = distance / 2
        } else { // 점프
            distance -= 1
            cost += 1
        }
    }

    return cost
}

print(solution(5000))
