//
//  ViewController.swift
//  InstagramRebuild
//
//  Created by Marvin Böddeker on 29.03.17.
//  Copyright © 2017 Marvin Böddeker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        addBarButtons()
        addInstagramTitle()
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 1000
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func addBarButtons(){
        
        let icon = UIImage(named: "insta_barbutton_1")?.withRenderingMode(.alwaysOriginal)
        let iconSize = CGRect(origin: CGPoint.zero, size: CGSize(width: 28, height: 24))
        let iconButton = UIButton(frame: iconSize)
        iconButton.setBackgroundImage(icon, for: .normal)
        let leftButton = UIBarButtonItem(customView: iconButton)
        
        
        let icon2 = UIImage(named: "insta_barbutton_2")?.withRenderingMode(.alwaysOriginal)
        let iconSize2 = CGRect(origin: CGPoint.zero, size: CGSize(width: 24, height: 24))
        let iconButton2 = UIButton(frame: iconSize2)
        iconButton2.setBackgroundImage(icon2, for: .normal)
        let rightButton = UIBarButtonItem(customView: iconButton2)
        
        
       
        self.navigationItem.leftBarButtonItem = leftButton
        self.navigationItem.rightBarButtonItem = rightButton
    }

    func addInstagramTitle(){
        let logo = UIImage(named: "insta_barbutton_logo")
        let logosize = CGRect(origin: CGPoint.zero, size: CGSize(width: 50, height: 30))
        var imageView = UIImageView(frame: logosize)
        imageView.contentMode = .scaleAspectFit
        imageView.image = logo!
        self.navigationItem.titleView = imageView
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: PostCell = tableView.dequeueReusableCell(withIdentifier: "PostCell", for: indexPath) as! PostCell
        if indexPath.row == 0 {
            cell.loadItem(image: #imageLiteral(resourceName: "insta1"))
        }
        if indexPath.row == 1 {
            cell.loadItem(image: #imageLiteral(resourceName: "insta2"))
        }
        if indexPath.row == 2 {
            cell.loadItem(image: #imageLiteral(resourceName: "insta3"))
        }
        if indexPath.row == 3 {
            cell.loadItem(image: #imageLiteral(resourceName: "insta4"))
        }
        
        cell.setNeedsUpdateConstraints()
        cell.updateConstraintsIfNeeded()
        cell.sizeToFit()
        return cell
    }
    

    

    

    
}











