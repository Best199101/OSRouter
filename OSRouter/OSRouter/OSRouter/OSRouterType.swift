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
typealias OSDic = [OSString:OSAnyHashble]

let kOSSwiftTargetModuleName = "kOSSwiftTargetModuleName"

enum OSModuleType:String{
  
    case Native = "Native"
    case Scheme = "Scheme"
    case Serve = "Serve"
    case Web = "Web"
    case Mini = "Mini"
    case Push = "Push"
    case Other = "Other"
    
}
