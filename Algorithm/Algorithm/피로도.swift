//
//  피로도.swift
//  Algorithm
//
//  Created by 강민지 on 2023/04/10.
//

import Foundation

func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
    var visited = [Bool](repeating: false, count: dungeons.count)
    var result = 0

    func permute(remain: Int, count: Int) {
        for i in 0..<dungeons.count {
            if visited[i] {
                continue
            }
            if remain >= dungeons[i][0] {
                visited[i] = true
                permute(remain: remain - dungeons[i][1], count: count + 1)
                visited[i] = false
            }
        }
        if count > result {
            result = count
        }
    }
    
    permute(remain: k, count: 0)
    return result
}

print(solution(80, [[80,20],[50,40],[30,10]]))
