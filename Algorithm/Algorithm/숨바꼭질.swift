import Foundation

let NK = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = NK[0]
let K = NK[1]
var visited = [Bool](repeating: false, count: 100001)
var sec = 0

func bfs(x: Int) {
    var queue = [(x, sec)]
    visited[x] = true

    while !queue.isEmpty {
        let node = queue.removeFirst()
        let currentX = node.0
        let move = [currentX-1, currentX+1, currentX*2]
        sec = node.1
        
        if N == K {
            sec = 0
            break
        }

        for i in 0..<3 {
            let nextX = move[i]
            
            if nextX < 0 || nextX > 100000 || visited[nextX] {
                continue
            }
            if nextX == K {
                sec += 1
                queue = []
                break
            } else {
                visited[nextX] = true
                queue.append((nextX, sec + 1))
            }
        }
    }
    print(sec)
}

print(bfs(x: N))
