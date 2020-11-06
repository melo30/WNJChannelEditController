//
//  UIImage+WNJBundle.m
//  WNJChannelEditController
//
//  Created by 陈诚 on 2020/3/6.
//  Copyright © 2020年 陈诚. All rights reserved.
//

#import "UIImage+WNJBundle.h"

@implementation UIImage(WNJBundle)

+ (UIImage *)imageMyBundleNamed:(NSString *)imageName{
    UIImage *image = [UIImage imageNamed:[@"WNJChannelEditController.bundle" stringByAppendingPathComponent:imageName]];
    if (image) {
        return image;
    } else {
        image = [UIImage imageNamed:[@"Frameworks/WNJChannelEditController.framework/WNJChannelEditController.bundle" stringByAppendingPathComponent:imageName]];
        if (!image) {
            image = [UIImage imageNamed:imageName];
        }
        return image;
    }
}

@end

