//
//  HookAll.m
//  HookAllMethod
//
//  Created by yeye(* ￣＾￣) on 2019/2/19.
//  Copyright © 2019年 com.test. All rights reserved.
//

#import "HookAll.h"
#import <objc/runtime.h>
#import <objc/message.h>

/*
 msgSend和msgForward互换，去invoke..
 */

@implementation HookAll

+ (void)prepareHookAll {
    hookAll_swizzleMsgSend();
}

static void hookAll_swizzleMsgSend() {
    Class class = [NSObject class];
    
    IMP msgForwardIMP = _objc_msgForward;
    IMP msgSendIMP = objc_msgSend;
    
//    SEL msgForwardSEL = @selector();
//    SEL msgSendSEL = @selector();
//    Method oriInstanceMsgSendMethod = class_getInstanceMethod(class, )
    
    method_exchangeImplementations(<#Method  _Nonnull m1#>, <#Method  _Nonnull m2#>)
}

@end
