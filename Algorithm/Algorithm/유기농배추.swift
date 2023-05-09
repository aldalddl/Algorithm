import Foundation

let T = Int(readLine()!)!

var M = 0
var N = 0
var K = 0
var graph = [[Int]]()

let moveX = [-1, 1, 0, 0]
let moveY = [0, 0, -1, 1]
var wormNum = 0

for _ in 0..<T {
    let MNK = readLine()!.split(separator: " ").map{ Int(String($0))! }
    M = MNK[0]
    N = MNK[1]
    K = MNK[2]

    graph = Array(repeating: Array(repeating: 0, count: M), count: N)
    
    for _ in 0..<K {
        let YX = readLine()!.split(separator: " ").map{ Int(String($0))! }
        let Y = YX[0]
        let X = YX[1]
        graph[X][Y] = 1
    }
    
    solution()
}

func bfs(x: Int, y: Int){
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
                graph[newX][newY] = 0
            }
        }
    }
}

func solution() {
    for i in 0..<N {
        for j in 0..<M {
            if graph[i][j] == 1 {
                graph[i][j] = 0
                bfs(x: i, y: j)
                wormNum += 1
            }
        }
    }
    print(wormNum)
    wormNum = 0
}
