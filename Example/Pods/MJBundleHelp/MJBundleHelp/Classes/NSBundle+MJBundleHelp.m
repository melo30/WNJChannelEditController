//
//  NSBundle+MJBundleHelp.m
//  MJBundleHelp
//
//  Created by manjiwang on 2019/4/4.
//

#import "NSBundle+MJBundleHelp.h"

@implementation NSBundle (MJBundleHelp)


+ (NSBundle *)getCurrentBundleWithKey:(NSString *)key {
    NSString *mainBundlePath = [NSBundle mainBundle].bundlePath;
    NSString *bundlePath = [NSString stringWithFormat:@"%@/%@.bundle",mainBundlePath, key];
    NSBundle *bundle = [NSBundle bundleWithPath:bundlePath];
    if (bundle == nil) {
        bundlePath = [NSString stringWithFormat:@"%@/Frameworks/%@.framework/%@.bundle",mainBundlePath, key, key];
        bundle = [NSBundle bundleWithPath:bundlePath];
    }
    return bundle;
}


@end
