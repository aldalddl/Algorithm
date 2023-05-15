import Foundation

func solution(_ s:String) -> String {
    var arrS = s.split(separator: " ").map{ Int(String($0))! }

    return "\(arrS.min()!) \(arrS.max()!)"
}

print(solution("-1 -2 -3 -4"))
