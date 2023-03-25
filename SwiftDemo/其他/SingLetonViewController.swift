//
//  SingLetonViewController.swift
//  SwiftDemo
//
//  Created by XieHenry on 2019/11/2.
//  Copyright © 2019 XieHenry. All rights reserved.
//

import UIKit

class SingLetonViewController: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let sin = XH_Singleton.shared
        print(sin.name)
        
        XH_MBProgressHUD.showSuccess(sin.name)
    }
    
    
}
