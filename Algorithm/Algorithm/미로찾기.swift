let NM = readLine()!.split(separator: " ").map{ Int(String($0))! }
let N = NM[0]
let M = NM[1]

var graph = [[Int]]()
for _ in 0..<N {
    graph.append(Array(readLine()!).map{ Int(String($0))! })
}

let moveX = [-1, 1, 0, 0]
let moveY = [0, 0, -1, 1]

func bfs(x: Int, y: Int) {
    var queue = [(x, y)]

    while !queue.isEmpty {
        let point = queue.removeFirst()
        let x = point.0
        let y = point.1
        
        for i in 0..<4 {
            let nextX = x + moveX[i]
            let nextY = y + moveY[i]
            
            if nextX < 0 || nextY < 0 || nextX >= M || nextY >= N {
                continue
            }
            if graph[nextY][nextX] == 0 {
                continue
            }
            if graph[nextY][nextX] == 1 {
                queue.append((nextX, nextY))
                graph[nextY][nextX] = graph[x][y] + 1
            }
        }
    }
    print(graph[N-1][M-1])
}

bfs(x: 0, y: 0)
