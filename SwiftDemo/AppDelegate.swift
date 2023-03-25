//
//  AppDelegate.swift
//  SwiftDemo
//
//  Created by XieHenry on 2019/10/29.
//  Copyright © 2019 XieHenry. All rights reserved.
//

import UIKit
import IQKeyboardManagerSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        self.window = UIWindow.init(frame: UIScreen.main.bounds)
        self.window?.backgroundColor = UIColor.white
        let tabbarVC = BaseTabBarController()
        self.window?.rootViewController = tabbarVC
        self.window?.makeKeyAndVisible()

        self.IQKeyBoard()

        return true
    }

    func IQKeyBoard() -> Void {
        //控制整个功能是否启用。
         IQKeyboardManager.shared.enable = true
        //控制点击背景是否收起键盘
         IQKeyboardManager.shared.shouldResignOnTouchOutside = true
        IQKeyboardManager.shared.shouldShowToolbarPlaceholder = true
        //将右边Done改成完成
         IQKeyboardManager.shared.toolbarDoneBarButtonItemText = "完成"
        // 控制是否显示键盘上的工具条
         IQKeyboardManager.shared.enableAutoToolbar = true
        //最新版的设置键盘的returnKey的关键字 ,可以点击键盘上的next键，自动跳转到下一个输入框，最后一个输入框点击完成，自动收起键盘
         IQKeyboardManager.shared.toolbarManageBehaviour = .byPosition
    }
    
}

