//
//  OSModuleType.swift
//  OSRouter
//
//  Created by 张飞 on 2019/11/15.
//  Copyright © 2019 张飞. All rights reserved.
//

import Foundation

typealias OSObjc = AnyObject
typealias OSAnyHashble = AnyHashable
typealias OSString = String
typealias OSAnyHashbleDic = [OSString:OSAnyHashble]

enum OSModuleType:String{
  
    case Native = "Native"
    case Serve = "Serve"
    case Web = "Web"
    case Mini = "Mini"
    case Push = "Push"
    case Other = "Other"
    
}
