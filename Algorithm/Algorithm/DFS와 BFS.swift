import Foundation

var nmv = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = nmv[0]
let m = nmv[1]
let v = nmv[2]

var graph = Array(repeating: Array(repeating: 0, count: n + 1), count: n + 1)

for _ in 0..<m {
    let points = readLine()!.split(separator: " ").map{ Int(String($0))! }
    graph[points[0]][points[1]] = 1
    graph[points[1]][points[0]] = 1
}

var visited = [Bool](repeating: false, count: n + 1)

func dfs(_ v: Int) {
    visited[v] = true
    print(v, terminator: " ")
    for i in 1..<n+1 {
        if visited[i] == true {
            continue
        }

        if graph[v][i] == 1 {
            dfs(i)
        }
    }
}

func bfs(_ v: Int) {
    var queue = [Int]()
    visited[v] = false
    
    queue.append(v)
    
    while !queue.isEmpty {
        var newV = queue.removeFirst()
        print(newV, terminator: " ")
        for i in 1..<n+1 {
            if visited[i] == false {
                continue
            }

            if graph[newV][i] == 1 {
                queue.append(i)
                visited[i] = false
            }
        }
    }
}

dfs(v)
print("")
bfs(v)
