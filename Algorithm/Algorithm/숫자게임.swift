import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
    var a = a
    var b = b
    var count = 0
    var indexB = 0
    
    a.sort()
    b.sort()

    for i in 0..<a.count {
        if a[i] < b[indexB] {
            indexB += 1
            count += 1
        }
    }
    return count
}
