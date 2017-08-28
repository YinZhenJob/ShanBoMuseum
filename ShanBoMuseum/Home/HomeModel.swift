//
//  HomeModel.swift
//  ShanBoMuseum
//
//  Created by 曾政桦 on 2017/8/28.
//  Copyright © 2017年 隐贞. All rights reserved.
//

import UIKit

class HomeModel: NSObject {

    var websiteUrl: String?
    var imageUrl: String?
    var title: String?
    var id: String?
    
    class func loadModel(data: Data, block: @escaping ([HomeModel])-> Void) {
        
        let model = HomeModel()
        let parser = XMLParser.init(data: data)
        parser.delegate = model
        parser.parse()
        
    }
}

extension HomeModel: XMLParserDelegate {
    
    func parserDidStartDocument(_ parser: XMLParser) {
        print("Begin")
    }
    
    func parserDidEndDocument(_ parser: XMLParser) {
        print("End")
    }
    
    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {
        
        // 查看打印信息
        print("\n")
        print("start:\t\t eleName:\(elementName) \t nameURI: \(namespaceURI ?? "nil") \t qName:\(qName ?? "nil")")
        for (key,value) in attributeDict {
            print("\t\t key: \(key) \t value: \(value)")
        }
        
        // 模型字段抽取
        if elementName == "banner" {
            
        }
    }
    
    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        print("end:\t\t eleName:\(elementName) \t nameURI: \(namespaceURI ?? "nil") \t qName:\(qName ?? "nil") \n\n")
        
    }
    
    func parser(_ parser: XMLParser, foundCharacters string: String) {
        <#code#>
    }
    
    
    func parser(_ parser: XMLParser, parseErrorOccurred parseError: Error) {
        print(parseError.localizedDescription)
    }
}
