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
    static public func performeCurrentModule(moduleUrl:URL){
        
        guard let moduleUrl = moduleUrl else { return  }
        
        let result = true
        
        let routerParams = moduleUrl.parseOSRouterUrl(url: moduleUrl)
        
        switch result {
        case routerParams.osModuleScheme?.hasPrefix(OSModuleType.Native.rawValue) == result:
            
            performeNativeModule(params: routerParams)
            
        case routerParams.osModuleScheme?.hasPrefix(OSModuleType.Serve.rawValue) == result:
            
            performServeModule(params: routerParams)
            
        case routerParams.osModuleScheme?.hasPrefix(OSModuleType.Web.rawValue) == result:
            
            performWebModule(params: routerParams)
            
        case routerParams.osModuleScheme?.hasPrefix(OSModuleType.Mini.rawValue) == result:
            
            performMiniModule(params: routerParams)
            
        case routerParams.osModuleScheme?.hasPrefix(OSModuleType.Push.rawValue) == result:
            
            performPushModule(params: routerParams)
            
        default:
            
            performOtherModule(params: routerParams)
        }
        
    }
    
}


