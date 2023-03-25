//
//  UI_AlertActionViewController.swift
//  SwiftDemo
//
//  Created by XieHenry on 2019/10/29.
//  Copyright © 2019 XieHenry. All rights reserved.
//

import UIKit

class UI_AlertActionViewController: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIButton(frame: CGRect())
        button.setTitle("点击将出现弹窗", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.addTarget(self, action: #selector(buttonClick), for: .touchUpInside)
        self.view.addSubview(button)
        
        button.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.view.snp_centerX)
            make.centerY.equalTo(self.view.snp_centerY)
            make.size.equalTo(CGSize(width: 200, height: 40))
        }
    }
    
    
    @objc func buttonClick() {
        let alert = UIAlertController(title:"是否清除缓存",message:"清除缓存将导致加载较慢",preferredStyle:.alert)
                   
        let yes = UIAlertAction(title:"确定",style:UIAlertAction.Style.default,handler:{(alerts:UIAlertAction) -> Void in
            XH_MBProgressHUD.showSuccess("确定")
        })
        
        let no  = UIAlertAction(title:"取消",style:.default,handler:{(alerts:UIAlertAction) -> Void in
            XH_MBProgressHUD.showSuccess("取消")

        })
        
        alert.addAction(yes)
        alert.addAction(no)
        
        self.present(alert,animated: true,completion: nil)
    }
    
}



