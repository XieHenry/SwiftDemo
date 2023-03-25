//
//  XH_MBProgressHUD.swift
//  SwiftDemo
//
//  Created by XieHenry on 2019/10/29.
//  Copyright © 2019 XieHenry. All rights reserved.
//

import UIKit
import MBProgressHUD

class XH_MBProgressHUD: MBProgressHUD {
    
    /**
     显示loading和文字
     */
    class func showLoadingWithTitle(_ title:String) {
        let view = viewWithShow()
        
        let hud = MBProgressHUD.showAdded(to: view, animated: true)
        hud.label.text = title
        hud.label.textColor = UIColor.white
        hud.mode = .indeterminate
        //可以改变菊花框的大小
        hud.minSize = CGSize.init(width: 100, height: 100)
        hud.layer.cornerRadius = 7
        // 设置提醒框背景色
        hud.bezelView.style = .solidColor
        hud.bezelView.backgroundColor = UIColor.init(hex: "000000", a: 0.8)
        hud.removeFromSuperViewOnHide = true
        
        hud.isUserInteractionEnabled = false
        //设置菊花颜色
        hud.contentColor = UIColor.white
    }
    
    
    /**
     显示成功的提醒
     */
    class func showSuccess(_ status: String) {
        showText(text: status, icon: "success.png")
    }
    
    /**
     显示失败的提醒
     */
    class func showError(_ status: String) {
        showText(text: status, icon: "error.png")
    }
    
    
    /**
     只显示文字
     */
    class func showMessage(_ status: String) {
        let view = viewWithShow()
        let hud = MBProgressHUD.showAdded(to: view, animated: true)
        
        hud.mode = MBProgressHUDMode.text
        hud.label.text = status;
        hud.label.textColor = UIColor.white
        // 隐藏时候从父控件中移除
        hud.removeFromSuperViewOnHide = true;
        // 设置提醒框背景色
        hud.bezelView.style = .solidColor;
        hud.bezelView.backgroundColor = UIColor.init(hex: "000000", a: 0.8)
        hud.hide(animated: true, afterDelay: 1.5)
    }
    
    
    
    fileprivate class func showText(text: String, icon: String) {
        let view = viewWithShow()
        
        let hud = MBProgressHUD.showAdded(to: view, animated: true)
        let img = UIImage(named: "MBProgressHUD.bundle/\(icon)")
        
        hud.customView = UIImageView(image: img)
        hud.mode = MBProgressHUDMode.customView
        hud.label.text = text
        hud.label.textColor = UIColor.white
        // 设置提醒框背景色
        hud.bezelView.style = .solidColor
        hud.bezelView.backgroundColor = UIColor.init(hex: "000000", a: 0.8)
        hud.removeFromSuperViewOnHide = true
        //设置菊花颜色
        hud.contentColor = UIColor.white
        hud.hide(animated: true, afterDelay: 1.5)
    }
    
    
    /**
     隐藏loading
     */
    class func hideHUDForView() {
        let view = viewWithShow()
        MBProgressHUD.hide(for: view, animated: true)
    }
    
    /**
     显示loading
     */
    class func showLoading() {
        let view = viewWithShow()
        let hud = MBProgressHUD.showAdded(to: view, animated: true)
        hud.mode = MBProgressHUDMode.indeterminate
        hud.bezelView.style = .solidColor
        hud.bezelView.backgroundColor = UIColor.init(hex: "000000", a: 0.8)
        hud.tintColor = UIColor.white
        //设置菊花颜色
        hud.contentColor = UIColor.white
    }
    
    
    class func viewWithShow() -> UIView {
        var window = UIApplication.shared.keyWindow
        if window?.windowLevel != UIWindow.Level.normal {
            let windowArray = UIApplication.shared.windows
            
            for tempWin in windowArray {
                if tempWin.windowLevel == UIWindow.Level.normal {
                    window = tempWin;
                    break
                }
            }
        }
        return window!
    }
}
