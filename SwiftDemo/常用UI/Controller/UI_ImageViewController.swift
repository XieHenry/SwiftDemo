//
//  UI_ImageViewController.swift
//  SwiftDemo
//
//  Created by XieHenry on 2019/10/29.
//  Copyright © 2019 XieHenry. All rights reserved.
//

import UIKit

class UI_ImageViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let imgview = UIImageView(frame: CGRect())
        imgview.image = UIImage(named: "猫咪")
        imgview.isUserInteractionEnabled = true
        self.view.addSubview(imgview)
        
        imgview.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.view.snp_centerX)
            make.centerY.equalTo(self.view.snp_centerY)
            make.size.equalTo(CGSize(width: 300, height: 300))
        }
        
    }
}
