//
//  DelegateViewController.swift
//  SwiftDemo
//
//  Created by XieHenry on 2019/10/31.
//  Copyright © 2019 XieHenry. All rights reserved.
//

import UIKit

class DelegateViewController: BaseViewController {
    
    //2.weak修饰代理
    weak var delegate : GetNameDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIButton(frame: CGRect())
        button.setBackgroundImage(UIImage(named: "bg_gift_btn"), for: .normal)
        button.setTitle("点击传值", for: .normal)
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
        self.navigationController?.popViewController(animated: true)
        
        //3.实现代理
        if self.delegate != nil && (self.delegate?.responds(to: Selector.init(("saveName:"))))! {
            self.delegate?.saveName("XieHenry")
        }
    }
}

//1.添加代理和方法
protocol GetNameDelegate : NSObjectProtocol {
    func saveName(_ nameStr:String)
}
