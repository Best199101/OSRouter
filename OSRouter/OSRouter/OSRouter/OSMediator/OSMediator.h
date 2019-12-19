//
//  OSMediator.h
//  OSMediator
//
//  Created by 张飞 on 2019/11/15.
//  Copyright © 2019 张飞. All rights reserved.
//

#import "OSRouter-Swift.h"
#import "OSRouterHeader.h"

@interface OSMediator : NSObject

+ (instancetype)sharedInstance;

//业务调用统一中转
- (id)performTarget:(OSRouterParams *)params shouldCacheTarget:(BOOL)shouldCacheTarget;
//根据name清理指定tagrget
- (void)removeTargetWithTargetName:(NSString *)targetName;
//清理所有资源
- (void)removeAllTarget;


@end

