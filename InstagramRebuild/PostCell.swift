//
//  PostCell.swift
//  InstagramRebuild
//
//  Created by Marvin Böddeker on 29.03.17.
//  Copyright © 2017 Marvin Böddeker. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {
    
    @IBOutlet weak var img_avatar: UIImageView! {
        didSet {
            self.img_avatar.layer.borderWidth = 0
            self.img_avatar.clipsToBounds = true
            self.img_avatar.layer.borderColor = UIColor.black.cgColor
            self.img_avatar.layer.cornerRadius = self.img_avatar.frame.height/2
            self.img_avatar.clipsToBounds = true
        }
    }
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

    func loadItem(image: UIImage) {

            // Screen Width
            var screen_width = UIScreen.main.bounds.width
            
            // Ratio Width / Height
            var ratio =  image.size.height / image.size.width
            
            // Calculated Height for the picture
            let newHeight = screen_width * ratio
            
            // METHOD 1
            self.constraint_MainImageHeight.constant = newHeight
        
            self.img_postImage.image = image
            
            // METHOD 2
            //self.selfieImageView.bounds = CGRectMake(0,0,screen_width,newHeight)
            
        
    }
    
        
    
}
