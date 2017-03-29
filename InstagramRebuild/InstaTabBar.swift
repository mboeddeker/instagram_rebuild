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
    @IBOutlet weak var btn_Profile: UIImageView! {
        didSet {
            
            self.btn_Profile.layer.borderWidth = 1
            
            self.btn_Profile.clipsToBounds = true
            self.btn_Profile.layer.borderColor = UIColor.black.cgColor
            self.btn_Profile.layer.cornerRadius = self.btn_Profile.frame.height/2
            self.btn_Profile.clipsToBounds = true
        }
    }
    
    class func instanceFromNib() -> UIView {
        return UINib(nibName: "InstaTabBar", bundle: Bundle.main).instantiate(withOwner: nil, options: nil)[0] as! UIView
    }
    
    
    

}
