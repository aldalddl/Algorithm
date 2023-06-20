func solution(_ arr:[Int]) -> Int {
    var prev = arr[0]

    for i in 1..<arr.count {
        prev = lcm(prev, arr[i])
    }
    
    return prev
}

func gcd(_ a: Int, _ b: Int) -> Int {
    var r = a % b

    if r != 0 {
        return gcd(b, r)
    } else {
        return b
    }
}

func lcm(_ a: Int, _ b: Int) -> Int {
    return a * b / gcd(a, b)
}

print(solution([2,6,8,14]))
