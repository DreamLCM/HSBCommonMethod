//
//  ViewController.swift
//  HSBCommonMethod
//
//  Created by CM on 2018/10/29.
//  Copyright © 2018 CM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let bool = ValueFilter.isAvailableEmail("123456789@qq.com")
        print(bool)
    }


}

