//
//  OSMediator.h
//  OSMediator
//
//  Created by 张飞 on 2019/11/15.
//  Copyright © 2019 张飞. All rights reserved.
//

#import "OSPublicHeader.h"

extern NSString * const kOSSwiftTargetModuleName;

@interface OSMediator : NSObject

+ (instancetype)sharedInstance;

- (id)performTarget:(NSString *)targetName action:(NSString *)actionName params:(NSDictionary *)params shouldCacheTarget:(BOOL)shouldCacheTarget;
- (void)removeTargetWithTargetName:(NSString *)targetName;


@end

