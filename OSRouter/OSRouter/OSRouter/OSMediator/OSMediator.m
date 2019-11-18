//
//  OSMediator.m
//  OSMediator
//
//  Created by 张飞 on 2019/11/15.
//  Copyright © 2019 张飞. All rights reserved.
//


#import "OSMediator.h"
#import <objc/runtime.h>
#import "NSInvocation+OSInvocation.h"

NSString * const kOSSwiftTargetModuleName = @"kOSSwiftTargetModuleName";


@interface OSMediator ()

@property (nonatomic, strong) NSMutableDictionary *cachedTarget;

@end


@implementation OSMediator

#pragma mark - public methods
+ (instancetype)sharedInstance
{
    static OSMediator *mediator;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        mediator = [[OSMediator alloc] init];
    });
    return mediator;
}


- (id)performTarget:(NSString *)targetName action:(NSString *)actionName params:(NSDictionary *)params shouldCacheTarget:(BOOL)shouldCacheTarget
{
    NSString *swiftModuleName = params[kOSSwiftTargetModuleName];
    
    // generate target
    NSString *targetClassString = nil;
    if (swiftModuleName.length > 0) {
        targetClassString = [NSString stringWithFormat:@"%@.%@", swiftModuleName, targetName];
    } else {
        targetClassString = [NSString stringWithFormat:@"%@", targetName];
    }
    NSObject *target = self.cachedTarget[targetClassString];
    if (target == nil) {
        Class targetClass = NSClassFromString(targetClassString);
        target = [[targetClass alloc] init];
    }

    // generate action
    NSString *actionString = [NSString stringWithFormat:@"%@:", actionName];
    SEL action = NSSelectorFromString(actionString);
    
    if (target == nil) {
        
        [self NoTargetActionResponseWithTargetString:targetClassString selectorString:actionString originParams:params];
        return nil;
    }
    
    if (shouldCacheTarget) {
        self.cachedTarget[targetClassString] = target;
    }

    if ([target respondsToSelector:action]) {
        return [self safePerformAction:action target:target params:params];
    } else {
        
        SEL action = NSSelectorFromString(@"NoFound:");
        if ([target respondsToSelector:action]) {
            return [self safePerformAction:action target:target params:params];
        } else {
           
            [self NoTargetActionResponseWithTargetString:targetClassString selectorString:actionString originParams:params];
            [self.cachedTarget removeObjectForKey:targetClassString];
            return nil;
        }
    }
}

- (void)removeTargetWithTargetName:(NSString *)targetName
{
    NSString *targetClassString = [NSString stringWithFormat:@"%@", targetName];
    [self.cachedTarget removeObjectForKey:targetClassString];
}

#pragma mark - private methods
- (void)NoTargetActionResponseWithTargetString:(NSString *)targetString selectorString:(NSString *)selectorString originParams:(NSDictionary *)originParams
{
    SEL action = NSSelectorFromString(@"NoResponse:");
    NSObject *target = [[NSClassFromString(@"NoTargetAction") alloc] init];
    
    NSMutableDictionary *params = [[NSMutableDictionary alloc] init];
    params[@"originParams"] = originParams;
    params[@"targetString"] = targetString;
    params[@"selectorString"] = selectorString;
    
    [self safePerformAction:action target:target params:params];
}

- (id)safePerformAction:(SEL)action target:(NSObject *)target params:(NSDictionary *)params
{
    NSMethodSignature* methodSig = [target methodSignatureForSelector:action];
    if(methodSig == nil) {
        return nil;
    }
    const char* retType = [methodSig methodReturnType];
    
    return [NSInvocation dispatchInvocationWithRetType:retType
                                                Action:action
                                                Target:target
                                                Params:params
                                             MethodSig:methodSig];
    
}

#pragma mark - getters and setters
- (NSMutableDictionary *)cachedTarget
{
    if (_cachedTarget == nil) {
        _cachedTarget = [[NSMutableDictionary alloc] init];
    }
    return _cachedTarget;
}

@end
