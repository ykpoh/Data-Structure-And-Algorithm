import UIKit

func numberOfMatches(_ n: Int) -> Int {
    return n - 1
}

//func numberOfMatches(_ n: Int) -> Int {
//    if n == 1 { return 0 }
//    var teamLeft = n
//    var matches = 0
//    while (teamLeft > 1) {
//        let match = teamLeft / 2
//        matches += match
//        teamLeft = teamLeft % 2 == 0 ? match : match + 1
//    }
//    return matches
//}

numberOfMatches(14)
