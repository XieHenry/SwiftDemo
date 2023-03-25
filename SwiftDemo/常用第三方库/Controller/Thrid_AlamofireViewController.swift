//
//  Thrid_AlamofireViewController.swift
//  SwiftDemo
//
//  Created by XieHenry on 2020/4/14.
//  Copyright © 2020 XieHenry. All rights reserved.
//

import UIKit
import Alamofire

class Thrid_AlamofireViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    func GET() {
        NetWorkTools.GetRequest(urlString: URL_GetDate, success: { ([String : AnyObject]) in
            
        }) { (Error) in
            
        }
    }
    
    
    func POST() {
        
    }

}
