//
//  GoodsViewController.swift
//  ShanBoMuseum
//
//  Created by 曾政桦 on 2017/8/28.
//  Copyright © 2017年 隐贞. All rights reserved.
//

import UIKit

class GoodsViewController: UIViewController, FSPagerViewDelegate, FSPagerViewDataSource {
    
    let bannerCellID = "GoodsBannerCellID"
    
    let bannerArray: [String] = {
        
        var array = [String]()
        for i in 0...10 {
            array.append("G\(i).jpg")
        }
        return array
    }()
    

    @IBOutlet weak var bannerView: FSPagerView! {
        didSet {
            self.bannerView.register(FSPagerViewCell.self, forCellWithReuseIdentifier: bannerCellID)
            self.bannerView.itemSize = .zero
            self.bannerView.isInfinite = true
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bannerView.delegate     = self
        bannerView.dataSource   = self
    }
    
    
    func numberOfItems(in pagerView: FSPagerView) -> Int {
        return bannerArray.count
    }
    
    func pagerView(_ pagerView: FSPagerView, cellForItemAt index: Int) -> FSPagerViewCell {
        
        let cell = pagerView.dequeueReusableCell(withReuseIdentifier: bannerCellID, at: index)
        cell.imageView?.image = UIImage.init(named: bannerArray[index])
        return cell
    }
    
    func pagerView(_ pagerView: FSPagerView, didSelectItemAt index: Int) {
        
    }
}

