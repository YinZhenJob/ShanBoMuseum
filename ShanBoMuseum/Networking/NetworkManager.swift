//
//  NetworkManager.swift
//  ShanBoMuseum
//
//  Created by 曾政桦 on 2017/8/28.
//  Copyright © 2017年 隐贞. All rights reserved.
//

import Foundation
import Alamofire

class NetworkManager {

    
    /// 请求首页banner的数据
    ///
    /// - Parameters:
    ///   - success: 成功返回的结果
    ///   - error: 失败返回的结果
    class func requestHomeBanner(success: @escaping ([Home.Model])->Void, error: @escaping (Error)->Void ) {
        
        let url = URL.init(string: "http://www.sxhm.com")
        Alamofire.request(url!).responseData { (responseData) in
            
            if let data = responseData.data {
                
                Home.Model.loadModel(data: data, block: { (modelArray) in
                    success(modelArray)
                })
            } else {
                error(responseData.error!)
            }
        }
    }
    
    
    /// 请求国家珍品的数据
    ///
    /// - Parameters:
    ///   - success: 成功返回的结果
    ///   - error: 失败返回的结果
    class func requestGoods(success: @escaping (Data)->Void, error: @escaping (Error)->Void ) {
        
        let url = URL.init(string: "http://www.sxhm.com")
        Alamofire.request(url!).responseData { (responseData) in
            if let data = responseData.data {
                success(data)
            } else {
                error(responseData.error!)
            }
        }
    }
    
    
}
