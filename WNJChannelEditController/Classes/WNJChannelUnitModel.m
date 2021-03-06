//
//  WNJChannelUnitModel.m
//  WNJChannelEditController
//
//  Created by 陈诚 on 2020/3/6.
//  Copyright © 2020年 陈诚. All rights reserved.
//

#import <objc/runtime.h>
#import "WNJChannelUnitModel.h"

@implementation WNJChannelUnitModel
-(NSString *)description{
    unsigned int count = 0;
    Ivar *ivars = class_copyIvarList(self.class, &count);
    NSMutableString *str = [NSMutableString string];
    for (int i = 0; i < count; ++i) {
        Ivar ivar = ivars[i];
        const char *name = ivar_getName(ivar);
        NSString *proName = [NSString stringWithUTF8String:name];
        id value = [self valueForKey:proName];
        
        [str appendFormat:@"<%@ : %@> \n", proName, value];
    }
    free(ivars);
    return str;
}
@end
