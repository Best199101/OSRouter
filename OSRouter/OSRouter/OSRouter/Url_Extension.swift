//
//  Url_Extension.swift
//  OSRouter
//
//  Created by 张飞 on 2019/11/18.
//  Copyright © 2019 张飞. All rights reserved.
//

import Foundation

extension URL{

    // url解析规则,根据需求可扩展
    internal func parseOSRouterUrl(url:URL) -> OSRouterParams {
        
        let routerParams = OSRouterParams()
        
        routerParams.osModuleTarget(url.host)
        routerParams.osModuleAction(url.path)
        routerParams.osModuleScheme(url.scheme)
        routerParams.osModuleAuthor(url.user)
        routerParams.osModulePassword(url.password)

        var paramsDic:OSAnyHashbleDic = [:]
        
        if let query = url.query{
            
            for item in query.components(separatedBy: "&"){
                
               let keyVaule = item.components(separatedBy: "=")
            
                if keyVaule.count == 2,let key = keyVaule.first,let last = keyVaule.last{
                    
                    paramsDic[key] = last
                    
                }
                
            }
   
        }
        routerParams.osModuleParams = paramsDic
        return routerParams

        
    }
    
    
    
}

