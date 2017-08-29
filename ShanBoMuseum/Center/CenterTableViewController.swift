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
        
            print("select: \(indexPath.row)")
    }
    
}
