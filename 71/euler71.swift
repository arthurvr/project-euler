var n: Int = 0
var d: Int = 1

let limit: Int = 1000000

for (var q = limit; q > 2; q--) {
    let p = (3 * q - 1) / 7

    if (p * d > n * q) {
        d = q
        n = p
    }
}

println("\(n) / \(d)")
