//
//  TabBarRootController.swift
//  InstagramRebuild
//
//  Created by Marvin Böddeker on 29.03.17.
//  Copyright © 2017 Marvin Böddeker. All rights reserved.
//

import UIKit

class TabBarRootController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBar.isHidden = true
        initOwnTabbar()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func initOwnTabbar(){
        // 1.need Controller Height
        let cHeight = self.view.frame.size.height
        let tabbar = InstaTabBar.instanceFromNib()
        tabbar.frame = CGRect(x: 0, y: cHeight - 55, width: self.view.frame.width, height: 55)
        self.view.addSubview(tabbar)
    }
    

}
