//
//  SpecialViewController.swift
//  ShanBoMuseum
//
//  Created by 曾政桦 on 2017/8/29.
//  Copyright © 2017年 隐贞. All rights reserved.
//

import UIKit

class SpecialViewController: UITableViewController {
    
    let modelArray = Home.Model.defalutModels()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "专题"

    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return modelArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: SpecialTableViewCell.cellID, for: indexPath) as! SpecialTableViewCell
        cell.spTitleLabel.text = modelArray[indexPath.row].title;
        cell.bgImageView.kf.setImage(with: URL.init(string: modelArray[indexPath.row].imageUrl!))
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let webVC = DetailViewController()
        webVC.webSite = modelArray[indexPath.row].websiteUrl
        webVC.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(webVC, animated: true)
    }
}
