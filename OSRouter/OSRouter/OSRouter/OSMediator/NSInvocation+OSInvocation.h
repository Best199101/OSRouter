//
//  NSInvocation+OSInvocation.h
//  Hey
//
//  Created by 张飞 on 2019/11/16.
//  Copyright © 2019 Giant Inc. All rights reserved.
//


#import "OSPublicHeader.h"
@interface NSInvocation (OSInvocation)

+(id)dispatchInvocationWithRetType:(const char*)retType
                            Action:(SEL)action
                            Target:(NSObject *)target
                            Params:(NSDictionary *)params
                         MethodSig:(NSMethodSignature*)methodSig;

@end
