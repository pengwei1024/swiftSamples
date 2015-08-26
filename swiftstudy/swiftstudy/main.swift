//
//  main.swift
//  swiftstudy
//
//  Created by baidu on 15/8/26.
//  Copyright (c) 2015年 apkfuns. All rights reserved.
//

import Foundation

println("Hello, World!")

// let来声明常量，var来声明变量
let a = "abc"
var b = 123

// 指定变量类型
var c :Double = 20


// 显式转换
let lable = "hello world!"
let width = 12
let string = lable + String(width)
println(string)

// 变量输出\()
var height = 20.5
var a1 = "the price= \(height)"
println(a1)

// 字典和数组
var array1 = ["aa","bb","cc"]
println("array1[1]= \(array1[1])")
// 数组赋值
array1[2] = "dd";
println("array1[2]= \(array1[2])")
// 字典
var array2 = ["a":"aaa","b":"bbb"]
println(array2["b"])   // ??? 输出这个Optional("bbb")
// 空数组
var array3 = []
var array4 = [String]()
var array5 = [String:Float]()  // ???这是什么情况
