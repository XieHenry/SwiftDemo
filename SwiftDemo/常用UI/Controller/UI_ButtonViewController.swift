//
//  UI_ButtonViewController.swift
//  SwiftDemo
//
//  Created by XieHenry on 2019/10/29.
//  Copyright © 2019 XieHenry. All rights reserved.
//

import UIKit

class UI_ButtonViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let button = UIButton(frame: CGRect())
        button.setBackgroundImage(UIImage(named: "bg_gift_btn"), for: .normal)
        button.setTitle("button", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.addTarget(self, action: #selector(buttonClick), for: .touchUpInside)
        self.view.addSubview(button)
        
        button.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.view.snp_centerX)
            make.centerY.equalTo(self.view.snp_centerY)
            make.size.equalTo(CGSize(width: 100, height: 40))
        }
    }
    

    @objc func buttonClick() {
        XH_MBProgressHUD.showSuccess("按钮被点击了")
    }
    
}
