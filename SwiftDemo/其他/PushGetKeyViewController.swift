//
//  PushGetKeyViewController.swift
//  SwiftDemo
//
//  Created by XieHenry on 2019/10/31.
//  Copyright © 2019 XieHenry. All rights reserved.
//

import UIKit

class PushGetKeyViewController: BaseViewController {
    var getResultStr : String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        XH_MBProgressHUD.showSuccess("接收的值为：\(getResultStr)")
        
    }
    

}
