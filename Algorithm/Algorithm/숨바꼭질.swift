import Foundation

let NK = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = NK[0]
let K = NK[1]
var seconds = 0
var visited = [Bool](repeating: false, count: 100000)

func bfs(x: Int) {
    var queue = [x]
    
    while !queue.isEmpty {
        let point = queue.removeFirst()
        let x = point
        let move = [x-1, x+1, x*2]
        print("x: \(x)")
        
        for i in 0..<3 {
            let newX = move[i]
            
            if newX < 0 || newX >= K || visited[i] {
                continue
            }
            
            if newX == K {
                print("end seconds: \(seconds)")
                break
            }
            else {
                visited[i] = true
                queue.append(newX)
                seconds += 1
                print("seconds: \(seconds)")
                print("queue: \(queue)")
            }
        }
    }
}

print(bfs(x: N))


