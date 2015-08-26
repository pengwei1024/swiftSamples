//
//  func.swift
//  swiftstudy
//
//  Created by baidu on 15/8/27.
//  Copyright (c) 2015年 apkfuns. All rights reserved.
//

import Foundation

// 函数定义
func getUser(name:String , age:Int) -> String{
    return "name=\(name);age=\(age)"
}

println(getUser("pengwei", 18))
