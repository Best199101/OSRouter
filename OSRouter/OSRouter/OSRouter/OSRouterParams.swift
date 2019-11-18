//
//  OSDictionary_Extension.swift
//  OSRouter
//
//  Created by 张飞 on 2019/11/15.
//  Copyright © 2019 张飞. All rights reserved.
//

import Foundation

class OSRouterParams:NSObject{
    
    public var osModuleTarget:OSString?
    public var osModuleAction:OSString?
    public var osModuleScheme:OSString?
    public var osModuleParams:OSDic?
    
 
}


extension OSRouterParams{
    
    @discardableResult
    public func osModuleTarget(_ value:OSString?)->OSRouterParams{
        
        self.osModuleTarget = value
        return self
        
    }
    
    @discardableResult
    public func osModuleAction(_ value:OSString?)->OSRouterParams{
        
        self.osModuleAction = value
        return self
        
    }
    
    @discardableResult
    public func osModuleScheme(_ value:OSString?)->OSRouterParams{
        
        self.osModuleScheme = value
        return self
        
    }
    
    @discardableResult
    public func osModuleParams(_ value:OSDic?)->OSRouterParams{
        
        self.osModuleParams = value
        return self
        
    }
    
}
