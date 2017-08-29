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
                return "http://m.sxhm.com/wap/"
            case .HomeDesc:
                return "http://m.sxhm.com/wap/index.php?ac=article&at=list&tid=48"
            case .HeJiaCun:
                return "http://m.sxhm.com/wap/index.php?ac=article&at=read&did=205"
            case .HeJiaCunYaoCang:
                return "何家村窑藏"
            }
        }
    }
}



extension Home.Model {
    
    /// 默认写死的数据
    ///
    /// - Returns: 四个默认的数据
    class func defalutModels() -> [Home.Model] {
        let model1 = Home.Model()
        model1.websiteUrl = "http://m.sxhm.com/wap/index.php?ac=article&at=read&did=670"
        model1.imageUrl   = "http://m.sxhm.com/upfile/2017/04/20170413112342_419.jpg"
        model1.title      = "2017年“陕西历史文化使者”评选活动成功召开新闻发布会"
        
        let model2 = Home.Model()
        model2.websiteUrl = "http://m.sxhm.com/wap/index.php?ac=article&at=read&did=692"
        model2.imageUrl   = "http://www.sxhm.com/upfile/2017/06/20170608161911_463.jpg"
        model2.title      = "岁月如歌——陕西民国以来经济社会发展变迁物证展"
        
        let model3 = Home.Model()
        model3.websiteUrl = "http://m.sxhm.com/wap/index.php?ac=article&at=read&did=652"
        model3.imageUrl   = "http://m.sxhm.com/upfile/2017/03/20170310095352_255.jpg"
        model3.title      = "风流清逸 萧疏奔放——吉林省博物院藏“南张北溥”书画特展"
        
        let model4 = Home.Model()
        model4.websiteUrl = "http://m.sxhm.com/wap/index.php?ac=article&at=read&did=612"
        model4.imageUrl   = "http://m.sxhm.com/upfile/2016/11/20161125152324_666.jpg"
        model4.title      = "千年窑火 生生不息——邯郸市博物馆藏磁州窑瓷器展"
        
        return [model1,model2,model3,model4]
    }
    
    class func loadModel(data: Data, block: @escaping ([Home.Model])-> Void) {
        block(self.defalutModels())
    }

}







