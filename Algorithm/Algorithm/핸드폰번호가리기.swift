func solution(_ phone_number:String) -> String {
    var hiddenStr = String(repeating: "*", count: phone_number.count - 4)
    var visibleStr = phone_number.suffix(4)
    
    return hiddenStr + visibleStr
}

print(solution("01033334444"))
