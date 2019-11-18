//
//  OSRouterProtocol.swift
//  Hey
//
//  Created by 张飞 on 2019/11/16.
//  Copyright © 2019 Giant Inc. All rights reserved.
//

import Foundation

protocol OSRouterProtocol {}

extension OSRouterProtocol{
    
    // 原生Module调用,
    static public  func performeNativeModule(nativeUrl:URL){
        
    }

    // 后端Module调用
    static public  func performServeModule(serveUrl:URL){
        
    }
    
    // webModule调用
    static public  func performWebModule(webUrl:URL){
        
    }
    
    // 推送Module调用
    static public  func performPushModule(pushUrl:URL){
        
    }
    
    // 小程序Module调用
    static public  func performMiniModule(miniUrl:URL){
        
    }
    
    // 其他类型Module调用
    static public  func performOtherModule(otherUrl:URL){
        
    }
    
    
}
