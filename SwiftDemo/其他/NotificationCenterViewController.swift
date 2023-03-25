//
//  NotificationCenterViewController.swift
//  SwiftDemo
//
//  Created by XieHenry on 2019/10/31.
//  Copyright © 2019 XieHenry. All rights reserved.
//

import UIKit

class NotificationCenterViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //接收通知
        NotificationCenter.default.addObserver(self, selector: #selector(getNameClick(nofi:)), name: NSNotification.Name(rawValue: "GetName"), object: nil)
    }

    //对获得的值进行处理
    @objc func getNameClick(nofi:Notification) {
        let dic:NSDictionary = nofi.object as! NSDictionary
        let str = dic["name"]
        
        XH_MBProgressHUD.showSuccess("获得的名字是：\(str!)")
    }
    

    //发送通知
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let dic:[String : String] = ["name":"XieHenry"]
        
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "GetName"), object: dic)
    }
    
    //移除通知
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
}
