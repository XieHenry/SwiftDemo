//
//  BlockViewController.swift
//  SwiftDemo
//
//  Created by XieHenry on 2019/10/31.
//  Copyright © 2019 XieHenry. All rights reserved.
//

import UIKit

typealias MyBlock = (_ sendMessage:String)->(Void)

class BlockViewController: BaseViewController {

    public var myBlock : MyBlock?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func back() {
        self.navigationController?.popViewController(animated: true)
        if myBlock != nil {
            myBlock!("闭包传值：XieHenry")
        }
    }
}
