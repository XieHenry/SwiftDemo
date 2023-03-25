//
//  UI_CollectionViewCell.swift
//  SwiftDemo
//
//  Created by XieHenry on 2019/10/30.
//  Copyright © 2019 XieHenry. All rights reserved.
//

import UIKit

class UI_CollectionViewCell: UICollectionViewCell {
   public var label = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        label = UILabel.init(frame: CGRect())
        label.textAlignment = .center
        label.backgroundColor = UIColor.randomColor()
        label.textColor = UIColor.white
        self.addSubview(label)
        
        label.snp.makeConstraints { (make) in
            make.left.right.top.bottom.equalTo(self)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
