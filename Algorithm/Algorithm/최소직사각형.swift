import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var width = [Int]()
    var height = [Int]()
    
    for size in sizes { // idx in 0..<sizes 는 런타임 에러..
        width.append(size.max()!)
        height.append(size.min()!)
    }
    
    return width.max()! * height.max()!
}

print(solution([[60, 50], [30, 70], [60, 30], [80, 40]]))
