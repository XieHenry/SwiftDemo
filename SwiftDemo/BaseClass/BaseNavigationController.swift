//
//  BaseNavigationController.swift
//  SwiftDemo
//
//  Created by XieHenry on 2019/10/29.
//  Copyright © 2019 XieHenry. All rights reserved.
//

import UIKit

class BaseNavigationController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //设置导航栏背景颜色
        self.navigationBar.barTintColor = UIColor.clear
        //设置导航栏背景图片
        self.navigationBar.setBackgroundImage(UIImage(named: "bg_nav"), for: .default)
    }
}
