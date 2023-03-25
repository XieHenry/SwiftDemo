//
//  BaseOtherViewController.swift
//  SwiftDemo
//
//  Created by XieHenry on 2019/10/30.
//  Copyright © 2019 XieHenry. All rights reserved.
//

import UIKit

class BaseOtherViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,GetNameDelegate {
    var dataArray : NSMutableArray?
    var tableView : UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("其他")

        self.view.backgroundColor = UIColor.white
        self.navigationItem.title = "其他"
        
        tableView = UITableView(frame: CGRect(), style: .plain)
        tableView?.backgroundColor = UIColor.white
        tableView?.delegate = self
        tableView?.dataSource = self
        view.addSubview(tableView!)
        tableView?.snp.makeConstraints { (make) in
            make.left.right.top.bottom.equalTo(self.view)
        }
        
        self.getData()
        
    }
    
    func getData() {
        dataArray = NSMutableArray()
        dataArray?.add("正向传值")
        dataArray?.add("通知")
        dataArray?.add("闭包")
        dataArray?.add("代理")
        dataArray?.add("单例")
        
        //刷新tableView
        tableView?.reloadData()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray!.count
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellid = "testCellID"
        var cell = tableView.dequeueReusableCell(withIdentifier: cellid)
        if (cell == nil) {
            cell = UITableViewCell.init(style: .subtitle, reuseIdentifier: cellid)
        }
        
        cell?.textLabel?.text = dataArray?[indexPath.row] as? String
        
        return cell!
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let didSelectStr = dataArray?[indexPath.row] as? String
        
         if didSelectStr == "正向传值" {
            
            let pushGetKeyVC = PushGetKeyViewController()
            pushGetKeyVC.hidesBottomBarWhenPushed = true
            pushGetKeyVC.title = didSelectStr
            pushGetKeyVC.getResultStr = "正向传值"
            self.navigationController?.pushViewController(pushGetKeyVC, animated: true)
            
        } else if didSelectStr == "通知" {
            
            let notiVC = NotificationCenterViewController()
            notiVC.hidesBottomBarWhenPushed = true
            notiVC.title = "通知-点击屏幕进行发送"
            self.navigationController?.pushViewController(notiVC, animated: true)
        } else if didSelectStr == "闭包" {
            
            let blockVC = BlockViewController()
            blockVC.hidesBottomBarWhenPushed = true
            blockVC.title = "闭包--点击返回查看效果"
            //MARK:闭包传值
            blockVC.myBlock = {(sendMessage:String) ->(Void) in
                XH_MBProgressHUD.showSuccess(sendMessage)
            }
            self.navigationController?.pushViewController(blockVC, animated: true)
        } else if didSelectStr == "代理" {
            
            let delegateVC = DelegateViewController()
            delegateVC.hidesBottomBarWhenPushed = true
            delegateVC.title = didSelectStr
            delegateVC.delegate = self
            self.navigationController?.pushViewController(delegateVC, animated: true)
        } else if didSelectStr == "单例" {
            
            let singLetonVC = SingLetonViewController()
            singLetonVC.hidesBottomBarWhenPushed = true
            singLetonVC.title = didSelectStr
            //MARK:在这里进行赋值，在控制器SingLetonViewController内获取
            let sin = XH_Singleton.shared
            sin.name = "单例---xiehenry"
            self.navigationController?.pushViewController(singLetonVC, animated: true)
        }
    }
 
    //MARK:代理传值
   @objc func saveName(_ nameStr: String) {
        print(nameStr)
        XH_MBProgressHUD.showSuccess("代理传值获得名字：\(nameStr)")
    }
    
    
}


