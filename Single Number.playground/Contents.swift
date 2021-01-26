import UIKit

func singleNumber(_ nums: [Int]) -> Int {
    nums.reduce(0, ^)
}

// My first solution
//func singleNumber(_ nums: [Int]) -> Int {
//    if nums.isEmpty { return -1 }
//    if nums.count == 1 { return nums[0] }
//    var sortedNumbers = nums.sorted()
//    while(sortedNumbers.count > 1) {
//        if sortedNumbers[0] == sortedNumbers[1] {
//            sortedNumbers.removeFirst(2)
//        } else {
//            break
//        }
//    }
//    return sortedNumbers[0]
//}

singleNumber([4,1,2,1,2])
