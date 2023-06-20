func solution(_ arr:[Int]) -> Int {
    let max = arr.max()!
    var newArr = arr
    newArr.removeLast()
    var count = 0
    var multiple = 0
    
    while count < newArr.count {
        multiple += max
        
        for num in newArr {
            if multiple % num == 0 {
                count += 1
                continue
            } else {
                count = 0
                break
            }
        }
    }
    
    if count == newArr.count {
        return multiple
    } else {
        return 0
    }
}
