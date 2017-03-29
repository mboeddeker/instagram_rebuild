//
//  PostCell.swift
//  InstagramRebuild
//
//  Created by Marvin Böddeker on 29.03.17.
//  Copyright © 2017 Marvin Böddeker. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {
    
    @IBOutlet weak var img_avatar: UIImageView!
    @IBOutlet weak var img_postImage: UIImageView!
    @IBOutlet weak var lbl_username: UILabel!
    @IBOutlet weak var lbl_description: UILabel!
    @IBOutlet weak var lbl_time: UILabel!
    @IBOutlet weak var btn_menu: UIButton!
    @IBOutlet weak var btn_heart: UIButton!
    @IBOutlet weak var btn_comment: UIButton!
    @IBOutlet weak var btn_message: UIButton!
    @IBOutlet weak var btn_save: UIButton!
    @IBOutlet weak var constraint_MainImageHeight: NSLayoutConstraint!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}