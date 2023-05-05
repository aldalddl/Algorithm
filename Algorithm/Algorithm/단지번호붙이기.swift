import Foundation

let N = Int(readLine()!)!

var graph = [[Int]]()
for _ in 0..<N {
    graph.append(Array(readLine()!.map{ Int(String($0))! }))
}

var moveX = [-1, 1, 0, 0]
var moveY = [0, 0, -1, 1]
var complex = [Int]()
var houseCnt = 0

func bfs(_ x:Int, _ y: Int) -> Int {
    var queue = [(x, y)]
    
    while !queue.isEmpty {
        let point = queue.removeFirst()
        let x = point.0
        let y = point.1
        
        for i in 0..<4 {
            let nextX = x + moveX[i]
            let nextY = y + moveY[i]
            
            if nextX < 0 || nextY < 0 || nextX >= N || nextY >= N {
                continue
            }
            if graph[nextX][nextY] == 0 {
                continue
            }
            if graph[nextX][nextY] == 1 {
                queue.append((nextX, nextY))
                graph[nextX][nextY] = 0
                houseCnt += 1
            }
        }
    }
    
    return houseCnt
}

for i in 0..<N {
    for j in 0..<N {
        if graph[i][j] == 1 {
            complex.append(bfs(i, j))
            houseCnt = 0
        }
    }
}

print(complex.count)
for num in complex.sorted(by: <) {
    print(num)
}
