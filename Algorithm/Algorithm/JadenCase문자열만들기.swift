func solution(_ s:String) -> String {
    var count = 0
    var result = ""
    
    for str in s {
        if str != " " {
            if count == 0 {
                result += str.uppercased()
            } else {
                result += str.lowercased()
            }
            count += 1
        } else {
            result += " "
            count = 0
        }
    }
    
    return result
}


print(solution("3people unFollowed me"))
