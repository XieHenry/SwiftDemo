//
//  Thrid_AlamofireImageViewController.swift
//  SwiftDemo
//
//  Created by XieHenry on 2020/4/14.
//  Copyright © 2020 XieHenry. All rights reserved.
//

import UIKit
import AlamofireImage

class Thrid_AlamofireImageViewController: BaseViewController {
    
    var imgview1 : UIImageView?
    var imgview2 : UIImageView?
    var imgview3 : UIImageView?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initUI()
        loadImage()
    }
    
    
    func initUI() {
        imgview1 = UIImageView(frame: CGRect())
        imgview1!.isUserInteractionEnabled = true
        self.view.addSubview(imgview1!)
        
        imgview1!.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.view.snp_centerX)
            make.top.equalTo(self.view.snp_top).offset(100)
            make.size.equalTo(CGSize(width: 100, height: 100))
        }
        
        
        imgview2 = UIImageView(frame: CGRect())
        imgview2!.isUserInteractionEnabled = true
        self.view.addSubview(imgview2!)
        
        imgview2!.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.view.snp_centerX)
            make.top.equalTo(imgview1!.snp_bottom).offset(50)
            make.size.equalTo(CGSize(width: 300, height: 300))
        }
        
        
        imgview3 = UIImageView(frame: CGRect())
        imgview3!.isUserInteractionEnabled = true
        self.view.addSubview(imgview3!)
        
        imgview3!.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.view.snp_centerX)
            make.top.equalTo(imgview2!.snp_bottom).offset(50)
            make.size.equalTo(CGSize(width: 100, height: 100))
        }
    }
    
    
    
    func loadImage() {
        let url = URL(string: "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1586860587107&di=22019edc60136886aba39cff583e4527&imgtype=0&src=http%3A%2F%2Fimg3.duitang.com%2Fuploads%2Fitem%2F201504%2F12%2F20150412H2744_RHPuG.jpeg")
        imgview1!.af_setImage(withURL: url!)
        
       //对图片进行缩放：
        let image2 = UIImage(named: "猫咪")!
        let size = CGSize(width: 100.0, height: 100.0)
        let scaledImage = image2.af_imageScaled(to: size)
        let aspectScaledToFitImage = image2.af_imageAspectScaled(toFit: size)
        let aspectScaledToFillImage = image2.af_imageAspectScaled(toFill: size)
        imgview2!.image = scaledImage
        imgview2!.image = aspectScaledToFillImage
        imgview2!.image = aspectScaledToFitImage

        //圆形图片
        let image3 = UIImage(named: "猫咪")!
        let radius: CGFloat = 20.0
        let roundedImage = image3.af_imageRounded(withCornerRadius: radius)
        let circularImage = image3.af_imageRoundedIntoCircle()
        imgview3!.image = roundedImage
        imgview3!.image = circularImage
    }
    
}
