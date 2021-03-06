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


// 控制流
let intArray = [1,2,3,4,5,6,7,8,9]
for num in intArray {
    if num % 2 == 0 {
        //println("双数")
    }else{
        //println("单数")
    }
}
var optionString: String? = "hello"
println(optionString == nil)

// optionString: String? 默认赋值为nil
if let name = optionString {
    println("\(name) pw")
}else{
    println("it's nil")
}

// switch语句,必须包含default，不需要break
let abc = "a"
switch(abc){
    case "a":
        println("a")
    case "b":
       println("b")
    default:
       println("c")
    
}

//遍历字典
let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
for (key, value) in interestingNumbers{
    print("key=\(key)=>")
    for num in value{
        print(num)
    }
    println()
}

// for循环 ,不能用i++,只能++i
for var i = 0;i<10;++i{
    print(i)
}
// 第二种写法
for i in 0..<10{
   print(i)
}
// 拓展写法,包含10
for i in 0...10{
    print(i)
}


//////////////////函数定义///////////////


// 函数定义
func getUser(name:String , age:Int) -> String{
    return "name=\(name);age=\(age)"
}
println(getUser("pengwei", 18))

// 函数返回多个值
func calculateStatistics(scores:[Int])->(min:Int,max:Int,sum:Int){
    var max = scores[0]
    var min = scores[0]
    var sum = 0
    for score in scores{
        if score > max {
            max = score
        }else if score < min{
            min = score
        }
        sum += score
    }
    return (min, max, sum)
}
var scores = calculateStatistics([5, 3, 100, 3, 9])
println("max=\(scores.max);sum=\(scores.2)")

// 函数可变参数
func numSum(sums:Int...)->Int{
    var sum = 0
    for num in sums {
        sum += num
    }
    return sum
}
println(numSum(1,2,3,4,5))

// 练习：计算平均数
func average(nums:Int...)->Float{
    var num = nums.count
    var sum = nums.reduce(0, combine: +)
    // 可变参数函数调用求解决方案！！！！
//     var sum = numSum(nums)
    return Float(sum/num)
}
println(average(1,2,3,4,5))

// 格式化,参考：http://blog.csdn.net/remote_roamer/article/details/7166043
var string1 = NSString(format:"name=%@,age=%d", "pw", 123)
println(string1)

