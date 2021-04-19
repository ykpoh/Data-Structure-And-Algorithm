//Given an unsorted array arr[] and two numbers x and y, find the minimum distance between x and y in arr[]. The array might also contain duplicates. You may assume that both x and y are different and present in arr[].
//
//Examples:
//Input: arr[] = {1, 2}, x = 1, y = 2
//Output: Minimum distance between 1 and 2 is 1.
//
//Input: arr[] = {3, 4, 5}, x = 3, y = 5
//Output: Minimum distance between 3 and 5 is 2.
//
//Input: arr[] = {3, 5, 4, 2, 6, 5, 6, 6, 5, 4, 8, 3}, x = 3, y = 6
//Output: Minimum distance between 3 and 6 is 4.
//
//Input: arr[] = {2, 5, 3, 5, 4, 4, 2, 3}, x = 3, y = 2
//Output: Minimum distance between 3 and 2 is 1.

// Approach 1
//Complexity Analysis:
//Time Complexity: O(n^2), Nested loop is used to traverse the array.
//Space Complexity: O(1), no extra space is required.

//func minimumDistance(arr: [Int], x: Int, y: Int) -> Int {
//    if arr.count < 2 { return -1 }
//    var minDistance = Int.max
//    for i in 0...arr.count-1 {
//        for j in 0...arr.count-1 {
//            if (arr[i] == x && arr[j] == y) || (arr[i] == y && arr[j] == x) {
//                minDistance = min(minDistance, abs(i-j))
//            }
//        }
//    }
//
//    if minDistance == Int.max {
//        return -1
//    }
//    return minDistance
//}

// Approach 2
//Time Complexity: O(n).
//Only one traversal of the array is needed.
//Space Complexity: O(1).
//As no extra space is required.

func minimumDistance(arr: [Int], x: Int, y: Int) -> Int {
    if arr.count < 2 { return -1 }
    var p = -1
    var minDistance = Int.max
    for i in 0...arr.count-1 {
        if arr[i] == x || arr[i] == y {
            if p != -1, arr[i] != arr[p] {
                minDistance = min(minDistance, i-p)
            }
            p = i
        }
    }

    if minDistance == Int.max {
        return -1
    }
    return minDistance
}

print(minimumDistance(arr: [2, 5, 3, 5, 4, 4, 2, 3], x: 3, y: 2))
