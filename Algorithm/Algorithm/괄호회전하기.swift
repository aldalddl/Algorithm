import Foundation

func solutions(_ s:String) -> Int {
    var result = 0
    var s = s
    
    for _ in 0..<s.count {
        let temp = s.removeFirst()
        s.append(temp)
        
        let arrS = Array(s)
        if isCorrectString(arrS) {
            result += 1
        }
    }
        
    return result
}

func isCorrectString(_ arrS: [Character]) -> Bool {
    var count = 0
    
    for i in 0..<arrS.count {
        if arrS[i] == "(" || arrS[i] == "{" || arrS[i] == "[" {
            count += 1
        } else {
            count -= 1
        }

        if count < 0 {
            return false
        }
    }
    return true
}

print(solutions("[)(]"))
