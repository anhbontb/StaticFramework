//
//  ViewController.swift
//  StaticFramework
//
//  Created by Bon Bon on 12/9/17.
//  Copyright © 2017 Bon Bon. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func addView() {
        let view = UIView()
        view.backgroundColor = UIColor.yellow
        self.view.addSubview(view)
        view.snp.makeConstraints { (make) in
            make.left.equalTo(20)
            make.right.equalTo(-20)
            make.top.equalTo(50)
            make.height.equalTo(200);
        }
    }
}

