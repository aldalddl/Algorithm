func solution(_ s:String) -> String {
    var index = s.index(s.startIndex, offsetBy : s.count/2)
    var result = String()
    
    if s.count % 2 == 0 {
        var prevIndex = s.index(s.startIndex, offsetBy : s.count/2 - 1)
        
        return String(s[prevIndex...index])
    } else {
        return String(s[index])
    }
}

print(solution("qwer"))
