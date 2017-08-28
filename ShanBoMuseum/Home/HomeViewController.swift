//
//  HomeViewController.swift
//  ShanBoMuseum
//
//  Created by 曾政桦 on 2017/8/28.
//  Copyright © 2017年 隐贞. All rights reserved.
//

import UIKit
import FSPagerView

class HomeViewController: UIViewController {

    @IBOutlet weak var bannerView: FSPagerView!
    @IBOutlet weak var pageControl: FSPageControl!
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
