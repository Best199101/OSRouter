//
//  OSRouterAction.swift
//  Hey
//
//  Created by 张飞 on 2019/11/16.
//  Copyright © 2019 Giant Inc. All rights reserved.
//

import UIKit

class OSRouterAction: NSObject {
    
    public var  actionValue:String?
    public var  actionParams:OSAnyHashbleDic?

}

extension OSRouterAction{
    
    static public func classMethod(_ actionName:OSString)->OSRouterAction{
       
        return classMethodParams(actionName)
        
    }
    
    static public func classMethodParams(_ actionName:OSString,actionParams:OSAnyHashbleDic = [:])->OSRouterAction{
        let action = OSRouterAction()
        action.actionValue = actionName
        action.actionParams = actionParams
        return action
        
    }
    
}

extension OSRouterAction{
    
    public func osActionValue(_ value:OSString)->OSRouterAction{
        
        self.actionValue = value
        return self
        
    }
    
    public func osActionParams(_ params:OSAnyHashbleDic)->OSRouterAction{
        
        self.actionParams = params
        return self
        
    }
    
}
