import Foundation

var returned = readLine()!.split(separator: " ").map(String.init).map {
    Int($0)!
}

var r_d = returned[0]
var r_m = returned[1]
var r_y = returned[2]

var due = readLine()!.split(separator: " ").map(String.init).map {
    Int($0)!
}

var d_d = due[0]
var d_m = due[1]
var d_y = due[2]

var fine = 0;

if r_y > d_y {
    fine = 10000
} else if r_y == d_y {
    if r_m > d_m {
        fine = (r_m - d_m) * 500
    } else if r_m == d_m && r_d > d_d {
        fine = (r_d - d_d) * 15
    }
}

print(fine)
