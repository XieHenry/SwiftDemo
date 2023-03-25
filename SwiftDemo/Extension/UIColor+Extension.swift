//
//  UIColor+Extension.swift
//  SwiftDemo
//
//  Created by XieHenry on 2020/5/18.
//  Copyright © 2020 XieHenry. All rights reserved.
//

import UIKit

extension UIColor {
    /**哈希值标注
     hex:哈希值
     a:透明度
     */
    convenience init(hex: String,a:CGFloat = 1.0) {
        let scanner = Scanner(string: hex)
        scanner.scanLocation = 0
        var rgbValue: UInt64 = 0
        scanner.scanHexInt64(&rgbValue)
        
        let r = (rgbValue & 0xff0000) >> 16
        let g = (rgbValue & 0xff00) >> 8
        let b = rgbValue & 0xff
        
        self.init(
            red: CGFloat(r) / 0xff,
            green: CGFloat(g) / 0xff,
            blue: CGFloat(b) / 0xff, alpha: a
        )
    }

    
    // 随机色值
    class func randomColor() -> UIColor {
        return UIColor(r: CGFloat(arc4random_uniform(256)), g: CGFloat(arc4random_uniform(256)), b: CGFloat(arc4random_uniform(256)))
    }
    
    
    // RGB色值标注
    convenience init(r : CGFloat, g : CGFloat, b : CGFloat, a:CGFloat = 1.0) {
        self.init(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: a)
    }
}
