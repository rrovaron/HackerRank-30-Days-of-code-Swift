import Foundation

var arr = [[Int]]()

for _ in 1...6 {
    guard let arrRowTemp = readLine()?.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression) else { fatalError("Bad input") }

    let arrRow: [Int] = arrRowTemp.split(separator: " ").map {
        if let arrItem = Int($0) {
            return arrItem
        } else { fatalError("Bad input") }
    }

    guard arrRow.count == 6 else { fatalError("Bad input") }

    arr.append(arrRow)
}

guard arr.count == 6 else { fatalError("Bad input") }

func isInsideBoundary(i: Int, j: Int) -> Bool {
    i + 2 < 6 && j + 2 < 6
}

func sumHourglasses(mat: [[Int]], i: Int, j: Int) -> Int {
    mat[i][j] + mat[i][j+1] + mat[i][j+2] + mat[i+1][j+1] + mat[i+2][j] + mat[i+2][j+1] + mat[i+2][j+2]
}

var max = -9 * 7

for i in 0...5 {
    for j in 0...5 {
        if isInsideBoundary(i: i, j: j) {
            let sum = sumHourglasses(mat: arr, i: i, j: j)
            
            if sum > max {
                max = sum
            }
        }
    }
}

print(max)
