//
//  XH_Singleton.swift
//  SwiftDemo
//
//  Created by XieHenry on 2019/11/2.
//  Copyright © 2019 XieHenry. All rights reserved.
//

import UIKit

class XH_Singleton: NSObject {
    //通过关键字static来保存实例引用
    private static let sharedInstance = XH_Singleton()
    //私有化构造方法
    private override init(){}
    
    //提供静态访问方法
    public static var shared:XH_Singleton {
        return self.sharedInstance
    }
    
    
    //MARK:在这里可以写一些全局的属性
    public var name : String = ""
    
}
