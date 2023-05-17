import Foundation

func solution(_ s:String) -> Int{

    var temp = [Character]()
    
    for c in s {
        if temp.last == c {
            temp.removeLast()
        } else { // 비어있는 경우 포함
            temp.append(c)
        }
    }

    return temp.isEmpty ? 1 : 0
}

print(solution("baabaa"))
