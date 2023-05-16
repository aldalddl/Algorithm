import Foundation

func solution(_ s:String) -> [Int] {
    var x = s
    var zeroC = 0
    var c = 0
    var convertC = 0
    
    while x != "1" {
        zeroC += x.filter({ $0 == "0" }).count
        c = x.filter({ $0 == "1" }).count
        x = String(c, radix: 2)
        convertC += 1
    }
    
    return [convertC, zeroC]
}

print(solution("110010101001"))
