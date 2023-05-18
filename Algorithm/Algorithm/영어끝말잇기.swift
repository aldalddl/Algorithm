import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    var passed = ["\(words[0])"]

    for i in 1..<words.count {
        if words[i].count < 2 {
            return [i % n + 1, i / n + 1]
        }
        
        if passed.count != 0 {
            var prevWord = passed.last!
            if prevWord.last! != words[i].first! {
                return [i % n + 1, i / n + 1]
            }
        }
        
        if passed.contains(words[i]) {
            return [i % n + 1, i / n + 1]
        }
        
        passed.append(words[i])
    }
    return [0, 0]
}

print(solution(2, ["hello", "one", "even", "never", "now", "world", "draw"]))
