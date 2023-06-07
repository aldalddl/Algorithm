import Foundation

func solution(_ numbers:[Int], _ target:Int) -> Int {
    var count = 0
    
    func dfs(index: Int, sum: Int) {
        if index == numbers.count - 1 {
            if sum == target {
                count += 1
            }
            return
        }
        
        dfs(index: index + 1, sum: sum + numbers[index + 1])
        dfs(index: index + 1, sum: sum - numbers[index + 1])
    }
    
    dfs(index: -1, sum: 0)
    
    return count
}
print(solution([1, 1, 1, 1, 1], 3))
