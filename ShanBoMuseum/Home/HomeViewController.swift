//
//  HomeViewController.swift
//  ShanBoMuseum
//
//  Created by 曾政桦 on 2017/8/28.
//  Copyright © 2017年 隐贞. All rights reserved.
//

import UIKit
import Kingfisher

class HomeViewController: UIViewController {
    
    let bannerCellID    = "bannerCellID"
    let bannerArray     = Home.Model.defalutModels()
    let collectionArray = Home.AccessType.allTheType()
    

    @IBOutlet weak var bannerView: FSPagerView! {
        didSet {
            self.bannerView.register(FSPagerViewCell.self, forCellWithReuseIdentifier: bannerCellID)
            self.bannerView.itemSize = .zero
            self.bannerView.isInfinite = true
        }
    }

    @IBOutlet weak var pageControl: FSPageControl! {
        didSet {
            self.pageControl.numberOfPages = self.bannerArray.count
            self.pageControl.contentHorizontalAlignment = .right
            self.pageControl.contentInsets = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        }
    }

    @IBOutlet weak var collectionView: UICollectionView! {
        didSet {
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.delegate     = self
        collectionView.dataSource   = self
        
        bannerView.delegate     = self
        bannerView.dataSource   = self
        bannerView.register(FSPagerViewCell.self, forCellWithReuseIdentifier: bannerCellID)
    }

}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    @available(iOS 6.0, *)
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HomeCollectionViewCell.cellID, for: indexPath) as! HomeCollectionViewCell
        cell.titleLabel.text = collectionArray[indexPath.row].rawValue
        return cell
    }

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return  collectionArray.count
    }
    
    
}

extension HomeViewController: FSPagerViewDelegate, FSPagerViewDataSource {
    
    func numberOfItems(in pagerView: FSPagerView) -> Int {
        return bannerArray.count
    }
    
    func pagerView(_ pagerView: FSPagerView, cellForItemAt index: Int) -> FSPagerViewCell {
        
        let cell = pagerView.dequeueReusableCell(withReuseIdentifier: bannerCellID, at: index)
            cell.imageView?.kf.setImage(with: URL.init(string: bannerArray[index].imageUrl!))
        return cell
    }
    
    func pagerView(_ pagerView: FSPagerView, didSelectItemAt index: Int) {
        // 跳转到新的页面
        
    }
    
    func pagerViewDidScroll(_ pagerView: FSPagerView) {
        guard self.pageControl.currentPage != pagerView.currentIndex else {
            return
        }
        self.pageControl.currentPage = pagerView.currentIndex
    }
}
