import Foundation

let NM = readLine()!.split(separator: " ").map{ Int(String($0))! }
let N = NM[0]
let M = NM[1]

var graph = [[Int]](repeating: [], count: N+1)
var visited = [Bool](repeating: false, count: N+1)
var count = 0

for _ in 0..<M {
    let uv = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let u = uv[0]
    let v = uv[1]
    graph[u].append(v)
    graph[v].append(u)
}

func dfs(index: Int) {
    visited[index] = true
    
    for i in 0..<graph[index].count {
        let next = graph[index][i]
        if !visited[next] {
            dfs(index: next)
        }
    }
}

for i in 1...N {
    if !visited[i] {
        count += 1
        dfs(index: i)
    }
}

print(count)
