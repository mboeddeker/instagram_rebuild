//
//  InstaTabBar.swift
//  InstagramRebuild
//
//  Created by Marvin Böddeker on 29.03.17.
//  Copyright © 2017 Marvin Böddeker. All rights reserved.
//

import UIKit

class InstaTabBar: UIView {

    @IBOutlet weak var btn_home: UIImageView!
    @IBOutlet weak var btn_search: UIImageView!
    @IBOutlet weak var btn_AddPhoto: UIImageView!
    @IBOutlet weak var btn_Heart: UIImageView!
    @IBOutlet weak var btn_Profile: UIImageView!
    
    class func instanceFromNib() -> UIView {
        return UINib(nibName: "InstaTabBar", bundle: Bundle.main).instantiate(withOwner: nil, options: nil)[0] as! UIView
    }
    

}
