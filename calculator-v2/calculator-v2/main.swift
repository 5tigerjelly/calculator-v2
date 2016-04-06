//
//  main.swift
//  calculator-v2
//
//  Created by Bummook on 4/5/16.
//  Copyright © 2016 iGuest. All rights reserved.
//

import Foundation


let addFunc : (Int, Int) -> Int = { $0 + $1 }
let subFunc : (Int, Int) -> Int = { $0 - $1 }
let mulFunc : (Int, Int) -> Int = { $0 * $1 }
let divFunc : (Int, Int) -> Int = { $0 / $1 }
let modFunc : (Int, Int) -> Int = { $0 % $1 }

print("5 - 4 = \(subFunc(5,4))")
print("4 * 3 = \(mulFunc(4,3))")
print("5 / 2 = \(divFunc(5,2))")
print("6 % 4 = \(modFunc(6,4))")


//generic "math operation" function
func mathOp(left : Int, right : Int, op : (Int, Int) -> Int) -> Int {
    return op(left, right)
}

print("1 + 8 = \(mathOp(1, right: 8) { $0 + $1 })")
print("2 * 7 = \(mathOp(2, right: 7) { $0 * $1 })")
print("6 / 2 = \(mathOp(6, right: 2) { $0 / $1 })")
print("7 % 5 = \(mathOp(7, right: 5) { $0 % $1 })")
print("5 - 4 = \(mathOp(5, right: 4) { $0 - $1 })")



//Array fun
func arrayAdd(numArray1 : [Int], numArray2 : [Int]) -> [Int]{
    var result = [Int]()
    for index in 0..<numArray1.count {
        result += [(numArray1[index]+numArray2[index])]
    }
   return result
}


print("[1,2,3] + [2,3,4] = \(arrayAdd([1,2,3], numArray2: [2,3,4]))")




let result = mathOp(1, right: 2) { $0 + $1 }
//print("Result = \(result)")



var list1 = [1,2,3,4,5]
var list2 = [4,5,6,7,8]