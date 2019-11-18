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

- (id)performTarget:(OSRouterParams *)params shouldCacheTarget:(BOOL)shouldCacheTarget;
- (void)removeTargetWithTargetName:(NSString *)targetName;


@end

