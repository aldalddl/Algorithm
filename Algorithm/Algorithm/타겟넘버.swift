//
//  main.swift
//  Algorithm
//
//  Created by MinJi Kang on 2023/03/23.
//

import Foundation

let input = Array(readLine()!)
let numbers = input.map { Int(String($0))! }

let target = Int(readLine()!)!

var targetNum = 0

func dfs(index: Int, sum: Int) {
    if index == numbers.count && sum == target {
        targetNum += 1
        return
    }

    guard index < numbers.count else { return }

    dfs(index: index + 1, sum: sum + numbers[index + 1])
    dfs(index: index + 1, sum: sum - numbers[index + 1])
}

dfs(index: -1, sum: 0)

print(targetNum)
