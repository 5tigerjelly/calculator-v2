//
//  main.swift
//  calculator-v2
//
//  Created by Bummook Oh 1239912 on 4/5/16.
//  Copyright © 2016 Bummook Oh. All rights reserved.
//

import Foundation

//
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
typealias math = (Int, Int) -> Int
func mathOp(left : Int, right : Int, op : math) -> Int {
    return op(left, right)
}

print("1 + 8 = \(mathOp(1, right: 8) { $0 + $1 })")
print("2 * 7 = \(mathOp(2, right: 7) { $0 * $1 })")
print("6 / 2 = \(mathOp(6, right: 2) { $0 / $1 })")
print("7 % 5 = \(mathOp(7, right: 5) { $0 % $1 })")
print("5 - 4 = \(mathOp(5, right: 4) { $0 - $1 })")



//functions for array addition
func arrayAdd(numArray1 : [Int]) -> Int{
    var result = 0
    for index in 0..<numArray1.count {
        result += numArray1[index]
    }
   return result
}


print("[1,22,33] = \(arrayAdd([1,22,33]))")
print("[2,1,31,15] = \(arrayAdd([2,1,31,15]))")
print("[3,2,23,64,52] = \(arrayAdd([3,2,23,64,52]))")
print("[4,3,43,1] = \(arrayAdd([4,3,43,1]))")
print("[5,4,33] = \(arrayAdd([5,4,33]))")
print("[6,5] = \(arrayAdd([6,5]))")



//functions for array multiplication
func arrayMul(numArray1 : [Int]) -> Int{
    var result = 1
    for index in 0..<numArray1.count {
        result *= numArray1[index]
    }
    return result
}

print("[1,22,33]  = \(arrayMul([1,22,33]))")
print("[2,1,31] = \(arrayMul([2,1,31]))")
print("[3,2,23] = \(arrayMul([3,2,23]))")
print("[4,3,43] = \(arrayMul([4,3,43]))")
print("[5,4,33] = \(arrayMul([5,4,33]))")
print("[6,5,32] = \(arrayMul([6,5,32]))")


func arrayCount(numArray1 : [Int]) -> Int{
    return numArray1.count
}

print("[1,22,33] = \(arrayCount([1,22,33]))")
print("[2,1,31,15] = \(arrayCount([2,1,31,15]))")
print("[3,2,23,64,52] = \(arrayCount([3,2,23,64,52]))")
print("[4,3,43,1] = \(arrayCount([4,3,43,1]))")
print("[5,4,33] = \(arrayCount([5,4,33]))")
print("[6,5] = \(arrayCount([6,5]))")

func arrayAvg(numArray1 : [Int]) -> Int{
    return (arrayAdd(numArray1) / arrayCount(numArray1))
}

print("[1,22,33] = \(arrayAvg([1,22,33]))")
print("[2,1,31,15] = \(arrayAvg([2,1,31,15]))")
print("[3,2,23,64,52] = \(arrayAvg([3,2,23,64,52]))")
print("[4,3,43,1] = \(arrayAvg([4,3,43,1]))")
print("[5,4,33] = \(arrayAvg([5,4,33]))")
print("[6,5] = \(arrayAvg([6,5]))")

typealias math2 = [Int] -> Int
func genArray(numArray : [Int], op : math2) -> Int{
    return op(numArray)
}

print("[1,22,44] average = \(genArray([1,22,44], op: arrayAvg))")
print("[1,22,44] count = \(genArray([1,22,44], op: arrayCount))")
print("[1,22,44] multiplication = \(genArray([1,22,44], op: arrayMul))")
print("[1,22,44] addition = \(genArray([1,22,44], op: arrayAdd))")

func addTuple(a: (x1: Int, y1: Int), b: (x2: Int, y2: Int)) -> (x: Int, y: Int){
    return ((a.x1+b.x2),(a.y1+b.y2))
}

print("(1,1) + (4,74) = \(addTuple((1,1),b: (4,74)))")
print("(1,4) + (6,64) = \(addTuple((1,4),b: (6,64)))")
print("(2,3) + (7,44) = \(addTuple((2,3),b: (7,44)))")
print("(5,8) + (38,14) = \(addTuple((5,8),b: (38,14)))")
print("(7,6) + (34,84) = \(addTuple((7,6),b: (34,84)))")
print("(9,3) + (43,24) = \(addTuple((9,3),b: (43,24)))")

func subTuple(a: (x1: Int, y1: Int), b: (x2: Int, y2: Int)) -> (x: Int, y: Int){
    return ((a.x1-b.x2),(a.y1-b.y2))
}


print("(1,1) - (4,74) = \(subTuple((1,1),b: (4,74)))")
print("(1,4) - (6,64) = \(subTuple((1,4),b: (6,64)))")
print("(2,3) - (7,44) = \(subTuple((2,3),b: (7,44)))")
print("(5,8) - (38,14) = \(subTuple((5,8),b: (38,14)))")
print("(7,6) - (34,84) = \(subTuple((7,6),b: (34,84)))")
print("(9,3) - (43,24) = \(subTuple((9,3),b: (43,24)))")


func addDictionary(a : [String:Int], b : [String:Int]) -> [String:Int]{
    return["a":0]
}

print("(1,1) - (4,74) = \(addDictionary(["x":1, "y":1],b: ["x":4, "y":74]))")











