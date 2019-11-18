//
//  OSDictionary_Extension.swift
//  OSRouter
//
//  Created by 张飞 on 2019/11/15.
//  Copyright © 2019 张飞. All rights reserved.
//

import Foundation

class OSRouterParams:NSObject{
    
    public lazy var osModuleValue:OSDic = {
        return [:]
    }()
    public var osModuleKey:OSString?

}


extension OSRouterParams{
    
    public func OSKey(_ key:OSString)->OSRouterParams{
        
        self.osModuleKey = key
        return self
        
    }
    
    public func OSValue(_ value:OSDic)->OSRouterParams{
        
        if let OSKey = self.osModuleKey {
            self.osModuleValue[OSKey] = value
        }
        return self
        
    }
    
}
