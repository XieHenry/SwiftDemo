//
//  BaseViewController.swift
//  SwiftDemo
//
//  Created by XieHenry on 2019/10/29.
//  Copyright © 2019 XieHenry. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
        createBackButton()
    }
    
    //添加返回按钮
    public func createBackButton() {
        let leftBarBtn = UIBarButtonItem.init(image: UIImage.init(named: "icon_back_gray")?.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(back))
        //用于消除左边空隙，要不然按钮顶不到最前面
        let spacer = UIBarButtonItem(barButtonSystemItem: .fixedSpace, target: nil,action: nil)
        spacer.width = -10;
        self.navigationItem.leftBarButtonItems = [spacer, leftBarBtn]
    }
    
    
    //返回按钮事件
    @objc func back() {
        self.navigationController?.popViewController(animated: true)
    }
    
    
}
