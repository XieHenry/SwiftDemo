//
//  BaseUIViewController.swift
//  SwiftDemo
//
//  Created by XieHenry on 2019/10/29.
//  Copyright © 2019 XieHenry. All rights reserved.
//

import UIKit
import SnapKit


class BaseUIViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var dataArray : NSMutableArray?
    var tableView : UITableView?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("常用UI")
        
        self.view.backgroundColor = UIColor.white
        self.navigationItem.title = "常用UI"
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
        dataArray?.add("UILabel")
        dataArray?.add("UIButton")
        dataArray?.add("UIImageView")
        dataArray?.add("UITextField")
        dataArray?.add("UICollectionView")
        dataArray?.add("UIAlertAction")
        dataArray?.add("UITableView")

        
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
        
        if didSelectStr == "UILabel" {
            
            let labelVC = UI_LabelViewController()
            labelVC.hidesBottomBarWhenPushed = true
            labelVC.title = didSelectStr
            self.navigationController?.pushViewController(labelVC, animated: true)
        } else if didSelectStr == "UIButton" {
            
            let buttonVC = UI_ButtonViewController()
            buttonVC.hidesBottomBarWhenPushed = true
            buttonVC.title = didSelectStr
            self.navigationController?.pushViewController(buttonVC, animated: true)
        } else if didSelectStr == "UIImageView" {
            
            let imageViewVC = UI_ImageViewController()
            imageViewVC.hidesBottomBarWhenPushed = true
            imageViewVC.title = didSelectStr
            self.navigationController?.pushViewController(imageViewVC, animated: true)
        } else if didSelectStr == "UITextField" {
            
            let textFieldVC = UI_TextFieldViewController()
            textFieldVC.hidesBottomBarWhenPushed = true
            textFieldVC.title = didSelectStr
            self.navigationController?.pushViewController(textFieldVC, animated: true)
        } else if didSelectStr == "UICollectionView" {
            
            let collectionVC = UI_CollectionViewController()
            collectionVC.hidesBottomBarWhenPushed = true
            collectionVC.title = didSelectStr
            self.navigationController?.pushViewController(collectionVC, animated: true)
        } else if didSelectStr == "UIAlertAction" {
            
            let alertActionVC = UI_AlertActionViewController()
            alertActionVC.hidesBottomBarWhenPushed = true
            alertActionVC.title = didSelectStr
            self.navigationController?.pushViewController(alertActionVC, animated: true)
        } else if didSelectStr == "UITableView" {
            
            let tableViewVC = UI_TableViewController()
            tableViewVC.hidesBottomBarWhenPushed = true
            tableViewVC.title = didSelectStr
            self.navigationController?.pushViewController(tableViewVC, animated: true)
        }
        
        
        
    }
}
