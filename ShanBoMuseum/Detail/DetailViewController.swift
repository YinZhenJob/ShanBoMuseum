//
//  DetailViewController.swift
//  ShanBoMuseum
//
//  Created by 曾政桦 on 2017/8/28.
//  Copyright © 2017年 隐贞. All rights reserved.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {
    
    var webSite: String? {
        didSet {
            
            if webSite == "何家村窑藏" {
                let path = Bundle.main.path(forResource: "何家村窑藏", ofType: "html")
                let imagsPath = Bundle.main.bundleURL
                
                
                self.webView.loadFileURL(URL.init(fileURLWithPath: path!), allowingReadAccessTo:imagsPath)
            } else {
                self.webView.load(URLRequest.init(url: URL.init(string: webSite!)!))
            }
        }
    }
    
    private let webView: WKWebView = {
        let view = WKWebView.init(frame: UIScreen.main.bounds)
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        view.addSubview(webView)
    }
}
