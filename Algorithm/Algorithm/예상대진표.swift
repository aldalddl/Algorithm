import Foundation

func solution(_ n:Int, _ a:Int, _ b:Int) -> Int
{
    var answer = 0
    var A = a
    var B = b
    
    while true {
        answer += 1
        
        if A % 2 == 0 {
            A = A / 2
        } else {
            A = (A + 1) / 2
        }

        if B % 2 == 0 {
            B = b / 2
        } else {
            B = (b + 1) / 2
        }

        if A == B {
            return answer
        }
    }

}

print(solution(8, 4, 7))
