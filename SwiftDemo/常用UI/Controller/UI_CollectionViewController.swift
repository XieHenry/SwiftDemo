//
//  UI_CollectionViewController.swift
//  SwiftDemo
//
//  Created by XieHenry on 2019/10/29.
//  Copyright © 2019 XieHenry. All rights reserved.
//

import UIKit

class UI_CollectionViewController: BaseViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    var collectionView : UICollectionView?
    var dataArray : NSMutableArray?
    
    let Identifier       = "UI_CollectionViewCell"
    let headerIdentifier = "UI_HeaderCollectionView"
    let footIdentifier   = "UI_FooterCollectionView"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.createUI()
        self.getData()
    }
    
    func getData() {
        dataArray = NSMutableArray()
        for index in 1...20 {
            let indexStr = "第\(index)个"
            dataArray?.add(indexStr)
        }
        collectionView?.reloadData()
    }
    
    
    func createUI() {
        // 初始化
        let layout = UICollectionViewFlowLayout.init()
        layout.itemSize = CGSize(width: 60, height: 60)
        layout.minimumLineSpacing = 5
        layout.minimumInteritemSpacing = 5
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets.init(top: 5, left: 5, bottom: 5, right: 5)
        // 设置分区头视图和尾视图宽高
        layout.headerReferenceSize = CGSize(width: SCREEN_WIDTH, height: 80)
        layout.footerReferenceSize = CGSize(width: SCREEN_WIDTH, height: 80)
        
        
        collectionView = UICollectionView(frame: CGRect(), collectionViewLayout: layout)
        collectionView?.delegate = self
        collectionView?.dataSource = self
        collectionView?.backgroundColor = UIColor.white
        self.view.addSubview(collectionView!)
        
        collectionView?.snp.makeConstraints { (make) in
            make.left.right.top.bottom.equalTo(self.view)
        }
        
        // 注册cell
        collectionView?.register(UI_CollectionViewCell.self, forCellWithReuseIdentifier: Identifier)
        // 注册headerView
        collectionView?.register(UI_HeaderCollectionView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerIdentifier)
        // 注册footView
        collectionView?.register(UI_FooterCollectionView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: footIdentifier)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataArray!.count
    }
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell:UI_CollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: Identifier, for: indexPath) as! UI_CollectionViewCell
        
        cell.label.text = dataArray![indexPath.row] as? String
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("点击的第\(indexPath.row)个")
    }
    
    
    //设定header和footer的方法，根据kind不同进行不同的判断即可
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if kind == UICollectionView.elementKindSectionHeader {
            
            let headerView : UI_HeaderCollectionView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerIdentifier, for: indexPath) as! UI_HeaderCollectionView
            
            return headerView
        } else {
            
            let footView : UI_FooterCollectionView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: footIdentifier, for: indexPath) as! UI_FooterCollectionView
            
            return footView
        }
    }
    
}

