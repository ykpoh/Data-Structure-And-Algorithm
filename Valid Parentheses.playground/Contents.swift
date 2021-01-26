import UIKit

func isValid(_ s: String) -> Bool {
    var dict = [Character: Int]()
    var num: Int = 0
    var j = s.count-1
    for i in 0..<s.count/2 {
        if s.firstIndex(of: <#T##Character#>)
        let c = s[s.index(s.startIndex, offsetBy: i)]
        let d = s[s.index(s.startIndex, offsetBy: j)]
        countStack(num: &num, char: c)
        countStack(num: &num, char: d)
        print(i, j)
        j -= 1
    }
    return num == 0
}

func countStack(num: inout Int, char: Character) {
    switch char {
    case "[", "(", "{":
        num += 1
    case "]", ")", "}":
        num -= 1
    default:
        break
    }
}

isValid("()[]{}")
