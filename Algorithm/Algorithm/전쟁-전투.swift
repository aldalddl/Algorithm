import Foundation

let NM = readLine()!.split(separator: " ").map{ Int(String($0))! }
let N = NM[0]
let M = NM[1]

var map = [[String]]()
for _ in 0..<M {
    map.append(Array(readLine()!).map{ String($0) })
}

var visited = Array(repeating: Array(repeating: false, count: N), count: M)
let moveX = [-1, 1, 0, 0]
let moveY = [0, 0, -1, 1]
var countW = 0
var countB = 0
var powerW = 0
var powerB = 0
var count = 0

for i in 0..<M {
    for j in 0..<N {
        if !visited[i][j] {
            count = 0
            dfs(x: i, y: j)
        }
    }
}

print("\(powerW) \(powerB)")

func dfs(x: Int, y: Int) {
    visited[x][y] = true
    count += 0
    
    for i in 0..<4 {
        let newX = x + moveX[i]
        let newY = y + moveY[i]
        
        if newX < 0 || newY < 0 || newX >= M || newY >= N {
            continue
        }
        if map[newX][newY] == "W" && !visited[newX][newY] {
            countW += 1
            powerW = countW * countW
            dfs(x: newX, y: newY)
        }
        if map[newX][newY] == "B" && !visited[newX][newY]{
            countB += 1
            powerB = countB * countB
            dfs(x: newX, y: newY)
        }
    }
}

