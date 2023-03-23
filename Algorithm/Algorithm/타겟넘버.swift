//
//  타겟넘버.swift
//  Algorithm
//
//  Created by MinJi Kang on 2023/03/23.
//

import Foundation

let numbers = [1,1,1,1,1]
let target = 3

func solution(_ numbers:[Int], _ target:Int) -> Int {
    var targetCount = 0

    func dfs(index: Int, sum: Int) {
        if index == (numbers.count - 1) && sum == target {
            targetCount += 1
            return
        }

        guard index < numbers.count - 1 else { return }

        dfs(index: index + 1, sum: sum + numbers[index + 1])
        dfs(index: index + 1, sum: sum - numbers[index + 1])
    }

    dfs(index: -1, sum: 0)

    return targetCount
}

print(solution(numbers, target))
