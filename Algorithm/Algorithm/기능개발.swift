import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var remainDays: [Int] = []
    var num: [Int] = []
    
    for i in progresses.indices {
        remainDays.append((100 - progresses[i] - 1) / speeds[i] + 1)
    }

    while !remainDays.isEmpty {
        let first: Int = remainDays.first!
        var count: Int = 0
        while !remainDays.isEmpty && remainDays.first! <= first {
            count += 1
            remainDays.removeFirst()
        }
        num.append(count)
    }
    
    return num
}

print(solution([95, 90, 99, 99, 80, 99], [1, 1, 1, 1, 1, 1]))
