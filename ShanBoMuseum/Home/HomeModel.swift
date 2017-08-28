//
//  HomeModel.swift
//  ShanBoMuseum
//
//  Created by 曾政桦 on 2017/8/28.
//  Copyright © 2017年 隐贞. All rights reserved.
//

import UIKit

class Home {
    
    
    class Model: NSObject {
        
        var websiteUrl: String?
        var imageUrl: String?
        var title: String?
        
        
        /// 默认写死的数据
        ///
        /// - Returns: 四个默认的数据
        class func defalutModels() -> [Model] {
            let model1 = Model()
            model1.websiteUrl = "http://www.sxhm.com/index.php?ac=article&amp&at=read&amp&did=11364"
            model1.imageUrl   = "http://www.sxhm.com/upfile/2017/07/20170713111845_352.jpg"
            model1.title      = ""
            
            let model2 = Model()
            model2.websiteUrl = "http://www.sxhm.com/index.php?ac=article&amp;at=read&amp;did=11344"
            model2.imageUrl   = "http://www.sxhm.com/upfile/2017/06/20170608161911_463.jpg"
            model2.title      = ""
            
            let model3 = Model()
            model3.websiteUrl = "http://www.sxhm.com/index.php?ac=article&amp;at=read&amp;did=11288"
            model3.imageUrl   = "http://www.sxhm.com/upfile/2017/04/20170421085716_233.jpg"
            model3.title      = ""
            
            let model4 = Model()
            model4.websiteUrl = "http://www.sxhm.com/index.php?ac=article&amp;at=read&amp;did=11276"
            model4.imageUrl   = "http://www.sxhm.com/upfile/2017/04/20170413094340_260.jpg"
            model4.title      = ""
            
            return [model1,model2,model3,model4]
        }
        
        class func loadModel(data: Data, block: @escaping ([Model])-> Void) {
            block(self.defalutModels())
        }
        
    }
    
    
    
    /// 用于在首页的入口
    ///
    /// - HomePage: rt
    /// - HomeDesc: rt
    /// - HeJiaCun: rt
    /// - HeJiaCunYaoCang: rt
    enum AccessType: String {
        
        case HomePage = "陕史博物馆"
        case HomeDesc = "陕史博物馆 简介"
        case HeJiaCun = "何家村窑厂"
        case HeJiaCunYaoCang = "何家村窑藏"
        
        
        /// 用于返回该枚举下所有值
        ///
        /// - Returns: 所有枚举值
        static func allTheType() -> [AccessType] {
            return [AccessType.HomePage,.HomeDesc,.HeJiaCun,.HeJiaCunYaoCang]
        }
        
        func pushTheView() -> String {
            switch self {
            case .HomePage:
                return "http://www.sxhm.com"
            case .HomeDesc:
                return "http://www.sxhm.com/index.php?ac=article&at=list&tid=230"
            case .HeJiaCun:
                return ""
            case .HeJiaCunYaoCang:
                return ""
            }
        }
    }
}









