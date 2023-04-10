//
//  카펫.swift
//  Algorithm
//
//  Created by 강민지 on 2023/04/10.
//

import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    var totalNum = brown + yellow // 넓이
    var result = [Int]()
    
    for height in 1..<totalNum {
        var width = totalNum / height
        
        if (width - 2) * (height - 2) == yellow {
            result = [width, height]
            return result
        }
    }
    
    return result
}

print(solution(10, 2))
