//: Playground - noun: a place where people can play

import Foundation

protocol Pageable { }

extension Array: Pageable {
    func vendNext(count: Int, inout cursor: Int) -> [Element] {
        var result = [Element]()
        
        for i in 0..<count {
            if cursor + i > self.count - 1 { break }
            result.append(self[cursor + i])
        }
        
        cursor += count
        return result
    }
}

var nums = [Int]()

for i in 0..<100 {
    nums.append(i)
}

var cursor = 0
let five = nums.vendNext(5, cursor: &cursor)
let ten = nums.vendNext(10, cursor: &cursor)
