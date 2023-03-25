//
//  BaseTabBarController.swift
//  SwiftDemo
//
//  Created by XieHenry on 2019/10/29.
//  Copyright © 2019 XieHenry. All rights reserved.
//

import UIKit

class BaseTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let baseUIVC = BaseUIViewController()
        let ThirdLibVC = BaseThirdLibViewController()
        let otherVC = BaseOtherViewController()
        
        self.addChildVC(childVC: baseUIVC, childTitle: "常用UI", imageName: "TabBar_Businesses", selectedImageName: "TabBar_Businesses_Sel")
        self.addChildVC(childVC: ThirdLibVC, childTitle: "常用第三方库", imageName: "TabBar_Assets", selectedImageName: "TabBar_Assets_Sel")
        self.addChildVC(childVC: otherVC, childTitle: "其他", imageName: "TabBar_Friends", selectedImageName: "TabBar_Friends_Sel")
    }
    
    //封装Tabbar的初始化
    func addChildVC(childVC:UIViewController, childTitle:String, imageName:String, selectedImageName:String) {
        let navigation = UINavigationController.init(rootViewController: childVC)
        navigation.navigationBar.tintColor = UIColor.white //字体颜色
        navigation.navigationBar.barTintColor = UIColor.red //背景颜色
        
        let dict:NSDictionary = [NSAttributedString.Key.foregroundColor: UIColor.white,NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 18)]
        //标题颜色
        navigation.navigationBar.titleTextAttributes = dict as? [NSAttributedString.Key : Any]
        
        childVC.title = childTitle
        childVC.tabBarItem.image = UIImage(named: imageName)?.withRenderingMode(.alwaysOriginal)
        childVC.tabBarItem.selectedImage = UIImage(named: selectedImageName)?.withRenderingMode(.alwaysOriginal)
        self.addChild(navigation)
    }
    
    
    
}
