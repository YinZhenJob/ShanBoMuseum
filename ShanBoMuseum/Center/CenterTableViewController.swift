//
//  CenterTableViewController.swift
//  ShanBoMuseum
//
//  Created by 曾政桦 on 2017/8/29.
//  Copyright © 2017年 隐贞. All rights reserved.
//

import UIKit

class CenterTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "我的"
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        switch indexPath.row {
        case 0:
            return
        case 1:
            presentAlt(text: "没有提供活动交流")
        case 2:
            presentAlt(text: "没有意见反馈")
        default:
            presentAlt(text: "没有设置")
        }
    }
    
    func presentAlt(text: String) {
        UIAlertView.init(title: "警告", message: text, delegate: self, cancelButtonTitle: "明白").show()
    }
    
}
