import Foundation

func solution(_ answers:[Int]) -> [Int] {
    let per1 = [1,2,3,4,5]
    let per2 = [2,1,2,3,2,4,2,5]
    let per3 = [3,3,1,1,2,2,4,4,5,5]
    var dict: [Int: Int] = [:]
    
    for i in 0..<answers.count {
        if answers[i] == per1[i % per1.count] {
            if !dict.keys.contains(1) {
                dict[1] = 0
            }
            dict[1]? += 1
        }
        if answers[i] == per2[i % per2.count] {
            if !dict.keys.contains(2) {
                dict[2] = 0
            }
            dict[2]? += 1
        }
        if answers[i] == per3[i % per3.count] {
            if !dict.keys.contains(3) {
                dict[3] = 0
            }
            dict[3]? += 1
        }
    }
    
    var max = dict.values.max()!
    
    return dict.filter{$0.value == max}.keys.sorted()
}

print(solution([1,3,2,4,2]))
