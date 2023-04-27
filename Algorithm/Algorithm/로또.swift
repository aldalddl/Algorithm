import Foundation

var visited = [Bool](repeating: false, count: 13)
var result = [Int]()
var input = [Int]()

while true {
    input = readLine()!.split(separator: " ").map{ Int(String($0))! }
    if input[0] == 0 {
        break
    } else {
        input.removeFirst()
        dfs(count: 0, startIndex: 0)
    }
    
}
            
func dfs(count: Int, startIndex: Int) {
    if count == 6 {
        print(result.map{ String($0) }.joined(separator: " "))
        return
    } else {
        for i in startIndex..<input.count {
            if !visited[i] {
                visited[i] = true
                result.append(input[i])
                dfs(count: count + 1, startIndex: i)
                visited[i] = false
            }
        }
    }
}

