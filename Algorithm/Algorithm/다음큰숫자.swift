import Foundation

func solution(_ n:Int) -> Int
{
    var binary = String(n, radix: 2)
    var count1 = binary.filter({$0 == "1"}).count
    var nextN = n + 1

    while true {
        binary = String(nextN, radix: 2)
        
        if binary.filter({$0 == "1"}).count == count1 {
            return nextN
        }
        
        nextN += 1
    }
}

print(solution(78))
