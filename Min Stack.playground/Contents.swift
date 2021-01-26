import UIKit

class MinStack {

    /** initialize your data structure here. */
    var array: [(Int, Int)]
    init() {
        array = [(Int, Int)]()
    }
    
    func push(_ x: Int) {
        if array.isEmpty {
            array.append((x, x))
        } else {
            array.append((x, min(getMin(), x)))
        }
    }
    
    func pop() {
        array.removeLast()
    }
    
    func top() -> Int {
        return array[array.count-1].0
    }
    
    func getMin() -> Int {
        return array[array.count-1].1
    }
}

/**
 * Your MinStack object will be instantiated and called as such:
 * let obj = MinStack()
 * obj.push(x)
 * obj.pop()
 * let ret_3: Int = obj.top()
 * let ret_4: Int = obj.getMin()
 */

var minStack = MinStack();
minStack.push(-2);
minStack.push(0);
minStack.push(-3);
minStack.getMin(); // return -3
minStack.pop();
minStack.top();    // return 0
minStack.getMin(); // return -2
