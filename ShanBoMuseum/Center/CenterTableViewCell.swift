//
//  CenterTableViewCell.swift
//  ShanBoMuseum
//
//  Created by 曾政桦 on 2017/8/29.
//  Copyright © 2017年 隐贞. All rights reserved.
//

import UIKit

class CenterTableViewCell: UITableViewCell {
    
    static let headCellID = "CenterHeadCellID"
    static let rowCellID  = "CenterRowCellID"
   
    @IBOutlet weak var headImageView: UIImageView! {
        didSet {
            
            let radius = headImageView.bounds.height / 2.0
            headImageView.layer.cornerRadius = radius
            headImageView.layer.masksToBounds = true
            
            headImageView.layer.borderColor = UIColor.init(white: 0.7, alpha: 0.7).cgColor
            headImageView.layer.borderWidth = 0.5
        }
    }
    
    @IBOutlet weak var loginButton: UIButton! {
    
        didSet {
            loginButton.addTarget(self, action: #selector(login), for: .touchUpInside)
        }
    }
    
    @objc func login() {
        UIAlertView.init(title: "注册|登录", message: "抱歉，还没搭建服务器", delegate: self, cancelButtonTitle: "明白了").show()
    }
}
