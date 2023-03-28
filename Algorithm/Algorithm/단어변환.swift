//
//  main.swift
//  Algorithm
//
//  Created by 강민지 on 2023/03/28.
//

import Foundation

var result = [Int]()

func solution(_ begin:String, _ target:String, _ words:[String]) -> Int {
    var visited = [Bool](repeating: false, count: words.count)
    
    func dfs(compareArr:String, count:Int) {
            if compareArr == target {
                result.append(count)
                return
            } else {
                for i in 0..<words.count {
                    if visited[i] == true {
                        continue
                    }

                    var compareArr = Array(compareArr)
                    var toArr = Array(words[i])
                    
                    var differentCount = 0

                    for j in 0..<compareArr.count {
                        if compareArr[j] != toArr[j] {
                            differentCount += 1
                        }
                    }

                    if differentCount == 1 {
                        visited[i] = true
                        dfs(compareArr: words[i], count: count + 1)
                        visited[i] = false
                    }
                }
            }
    }

    dfs(compareArr: begin, count: 0)
        
    if result.isEmpty {
        return 0
    } else {
        return result.min()!
    }
    
    return 0
}

print(solution("hit", "cog", ["hot", "dot", "dog", "lot", "log", "cog"]))
