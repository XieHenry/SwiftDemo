//
//  UI_HeaderCollectionView.swift
//  SwiftDemo
//
//  Created by XieHenry on 2019/10/30.
//  Copyright © 2019 XieHenry. All rights reserved.
//

import UIKit

class UI_HeaderCollectionView: UICollectionReusableView {
    var view : UIView?
    var label : UILabel?
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        view = UIView.init(frame: CGRect())
        view?.backgroundColor = UIColor.randomColor()
        self.addSubview(view!)
        
        view!.snp.makeConstraints { (make) in
            make.left.right.top.bottom.equalTo(self)
        }
        
        label = UILabel.init(frame: CGRect())
        label?.text = "Header View"
        label?.textAlignment = .center
        self.addSubview(label!)
        
        label!.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.snp_centerX)
            make.centerY.equalTo(self.snp_centerY)
            make.height.equalTo(40)
        }
    }
}
