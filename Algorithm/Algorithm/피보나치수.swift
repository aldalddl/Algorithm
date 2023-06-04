func solution(_ n:Int) -> Int {
    
    var fiboArr = [0, 1]

    for i in 0...n {
        if i == 0 || i == 1 {
            continue
        } else {
            fiboArr.append((fiboArr[i-1] + fiboArr[i-2]) % 1234567)
        }
    }
        
    return fiboArr[n]
}

print(solution(5))
