import Foundation

func solution(_ tickets:[[String]]) -> [String] {
    var tickets1 = [["ICN", "JFK"], ["ICN", "AAD"], ["JFK", "ICN"]]
    var tickets = tickets1.sorted{ $0[1] < $1[1] }
    var route = [String]()
    var visited = [Bool](repeating: false, count: tickets.count)
    
    func dfs(departure: String) {
        if route.count == tickets.count {
            route.append(departure)
            return
        }
        
        for i in 0..<tickets.count {
            if tickets[i][0] == departure && visited[i] == false{
                visited[i] = true
                route.append(tickets[i][0])
                dfs(departure: tickets[i][1])

                if route.count == tickets.count + 1 {
                    return
                }
                
                
                visited[i] = false
            }
        }
    }
    
    dfs(departure: "ICN")
    
    return route
}

print(solution([["ICN", "SFO"], ["ICN", "ATL"], ["SFO", "ATL"], ["ATL", "ICN"], ["ATL","SFO"]]))
