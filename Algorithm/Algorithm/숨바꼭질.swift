import Foundation

let NM = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = NM[0]
let M = NM[1]

var graph = [[Int]]()
for _ in 0..<N {
    graph.append(Array(readLine()!).map { Int(String($0))! })
}

var moveX = [-1, 1, 0, 0]
var moveY = [0, 0, 1, -1]

func bfs(x: Int, y: Int) {
    var queue = [(x, y)]
    
    while !queue.isEmpty {
        let point = queue.removeFirst()
        let x = point.0
        let y = point.1
        
        for i in 0..<4 {
            let newX = x + moveX[i]
            let newY = y + moveY[i]
            
            if newX < 0 || newY < 0 || newX >= N || newY >= M {
                continue
            }
            if graph[newX][newY] == 0 {
                continue
            }
            if graph[newX][newY] == 1 {
                queue.append((newX, newY))
                graph[newX][newY] = graph[x][y] + 1 // 칸의 수 계산
            }
        }
    }
    print(graph[N-1][M-1])
}

print(bfs(x: 0, y: 0))

