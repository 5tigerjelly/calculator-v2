//
//  main.swift
//  calculator-v2
//
//  Created by Bummook on 4/5/16.
//  Copyright © 2016 iGuest. All rights reserved.
//

import Foundation

//generic "math operation" function
let addFunc : (Int, Int) -> Int = { $0 + $1 }
let subFunc : (Int, Int) -> Int = { $0 - $1 }
let mulFunc : (Int, Int) -> Int = { $0 * $1 }
let divFunc : (Int, Int) -> Int = { $0 / $1 }
let modFunc : (Int, Int) -> Int = { $0 % $1 }

print("1 + 5 = \(addFunc(1,5))")
print("5 - 4 = \(subFunc(5,4))")
print("4 * 3 = \(mulFunc(4,3))")
print("5 / 2 = \(divFunc(5,2))")
print("6 % 4 = \(modFunc(6,4))")

//Array fun
func arrayAdd(numArray1 : [Int], numArray2 : [Int]) -> [Int]{
   return []
}



func mathOp(left : Int, right : Int, op : (Int, Int) -> Int) -> Int {
    return op(left, right)
}

//func mathOp(left : Int, right : Int, op : (Int, Int) -> Int) -> Int {
//    return op(left, right)
//}
//let result = mathOp(1, right: 2) { $0 + $1 }
//print("Result = \(result)")



var list1 = [1,2,3,4,5]
var list2 = [4,5,6,7,8]