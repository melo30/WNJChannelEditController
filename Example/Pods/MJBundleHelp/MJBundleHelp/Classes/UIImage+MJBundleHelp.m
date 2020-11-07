//
//  UIImage+MJBundleHelp.m
//  MJBundleHelp
//
//  Created by manjiwang on 2019/4/4.
//

#import "UIImage+MJBundleHelp.h"
#import "NSBundle+MJBundleHelp.h"

@implementation UIImage (MJBundleHelp)

+ (UIImage *)bundleKey:(NSString *)key imageName:(NSString *)imageName {
    return [self bundleKey:key imageName:imageName ofType:@"png"];
}

+ (UIImage *)bundleKey:(NSString *)key imageName:(NSString *)imageName ofType:(NSString *)type {
    NSBundle *bundle = [NSBundle getCurrentBundleWithKey:key];
    if ([UIImage respondsToSelector:@selector(imageNamed:inBundle:compatibleWithTraitCollection:)]) {
        return [UIImage imageNamed:imageName inBundle:bundle compatibleWithTraitCollection:nil];
    } else {
        return [UIImage imageWithContentsOfFile:[bundle pathForResource:imageName ofType:type]];
    }
}

@end
