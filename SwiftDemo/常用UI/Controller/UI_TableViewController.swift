//
//  UI_TableViewController.swift
//  SwiftDemo
//
//  Created by XieHenry on 2020/4/13.
//  Copyright © 2020 XieHenry. All rights reserved.
//

import UIKit



class UI_TableViewController: BaseViewController,UITableViewDelegate,UITableViewDataSource {

    var tableView : UITableView?
    var dataArray : NSMutableArray?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initUI()
        getData()
    }
    

    func getData() {
        dataArray = NSMutableArray()
        for index in 1...20 {
            let indexStr = "第\(index)个"
            dataArray?.add(indexStr)
        }
        tableView?.reloadData()
    }

    func initUI() {
        //初始化
        tableView = UITableView.init(frame: CGRect(), style: .plain)
        tableView?.delegate = self
        tableView?.dataSource = self
        self.view.addSubview(tableView!)
        
        tableView?.snp.makeConstraints({ (make) in
            make.left.right.top.bottom.equalTo(self.view)
        })
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellId = "cell"
        var cell = tableView.dequeueReusableCell(withIdentifier: cellId)
        if cell == nil {
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: cellId)
        }
        
        cell?.textLabel?.text = (dataArray?.object(at: indexPath.row) as! String)
    
        return cell!
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray!.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("点击的第\(indexPath.row)个")
    }
}

