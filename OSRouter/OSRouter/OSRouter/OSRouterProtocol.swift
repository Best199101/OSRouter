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
    static public  func performeNativeModule(params:OSRouterParams){
        
        OSMediator.sharedInstance()?.performTarget(params,shouldCacheTarget: true)
    }
    // 后端Module调用
    static public  func performServeModule(params:OSRouterParams){
        
        OSMediator.sharedInstance()?.performTarget(params,shouldCacheTarget: true)
    }
    
    // webModule调用
    static public  func performWebModule(params:OSRouterParams){
        OSMediator.sharedInstance()?.performTarget(params,shouldCacheTarget: true)
    }
    
    // 推送Module调用
    static public  func performPushModule(params:OSRouterParams){
        OSMediator.sharedInstance()?.performTarget(params,shouldCacheTarget: true)
    }
    
    // 小程序Module调用
    static public  func performMiniModule(params:OSRouterParams){
        OSMediator.sharedInstance()?.performTarget(params,shouldCacheTarget: true)
    }
    
    // 其他类型Module调用
    static public  func performOtherModule(params:OSRouterParams){
        OSMediator.sharedInstance()?.performTarget(params,shouldCacheTarget: true)
    }
    
    
}
