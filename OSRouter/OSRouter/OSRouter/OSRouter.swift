//
//  OSRouter.swift
//  OSRouter
//
//  Created by 张飞 on 2019/11/15.
//  Copyright © 2019 张飞. All rights reserved.
//

import UIKit

class OSRouter: NSObject,OSRouterProtocol {}

extension OSRouter{
  
    // Module统一调用
    static public func performeCurrentModule(moduleUrl:URL?){
        
        guard let moduleUrl = moduleUrl, let moduleScheme = moduleUrl.scheme else { return  }
        
        let result = true
        
        switch result {
        case moduleScheme.hasPrefix(OSModuleType.Native.rawValue):
            
            performeNativeModule(nativeUrl: moduleUrl)
            
      case moduleScheme.hasPrefix(OSModuleType.Serve.rawValue):
            
            performServeModule(serveUrl: moduleUrl)
            
        case moduleScheme.hasPrefix(OSModuleType.Web.rawValue):
            
            performWebModule(webUrl: moduleUrl)
            
        case moduleScheme.hasPrefix(OSModuleType.Mini.rawValue):
            
            performMiniModule(miniUrl: moduleUrl)
            
        case moduleScheme.hasPrefix(OSModuleType.Push.rawValue):
            
            performPushModule(pushUrl: moduleUrl)
            
        default:
            
            performOtherModule(otherUrl: moduleUrl)
        }
        
    }
    
}


