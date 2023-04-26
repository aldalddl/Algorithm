import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var result = [Int]()

    for i in commands {
        let startIndex = i[0] - 1
        let endIndex = i[1] - 1
        let targetIndex = i[2] - 1

        let subArr = array[startIndex ... endIndex].sorted()
        result.append(subArr[targetIndex])
    }
    return result
}

print(solution([1, 5, 2, 6, 3, 7, 4], [[2, 5, 3], [4, 4, 1], [1, 7, 3]]))
