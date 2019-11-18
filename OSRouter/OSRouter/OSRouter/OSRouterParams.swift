//
//  OSDictionary_Extension.swift
//  OSRouter
//
//  Created by 张飞 on 2019/11/15.
//  Copyright © 2019 张飞. All rights reserved.
//

import Foundation

@objcMembers class OSRouterParams:NSObject{
    
    public var osModuleTarget:OSString?
    public var osModuleSwiftModuleName:OSString?
    public var osModuleAction:OSString?
    public var osModuleScheme:OSString?
    public var osModuleAuthor:OSString?
    public var osModulePassword:OSString?
    public var osModuleParams:OSAnyHashbleDic?
    
    

}


extension OSRouterParams{
    
    @discardableResult
    public func osModuleTarget(_ value:OSString?)->OSRouterParams{
        
        self.osModuleTarget = value
        return self
        
    }
    
    @discardableResult
    public func osModuleSwiftModuleName(_ value:OSString?)->OSRouterParams{
        
        self.osModuleSwiftModuleName = value
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
    public func osModuleAuthor(_ value:OSString?)->OSRouterParams{
        
        self.osModuleAuthor = value
        return self
        
    }
    
    @discardableResult
    public func osModulePassword(_ value:OSString?)->OSRouterParams{
        
        self.osModulePassword = value
        return self
        
    }

    @discardableResult
    public func osModuleParams(_ value:OSAnyHashbleDic?)->OSRouterParams{
        
        self.osModuleParams = value
        return self
        
    }
    
}
