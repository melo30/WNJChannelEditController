//
//  NSBundle+MJBundleHelp.h
//  MJBundleHelp
//
//  Created by manjiwang on 2019/4/4.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSBundle (MJBundleHelp)

+ (NSBundle *)getCurrentBundleWithKey:(NSString *)key;

@end

NS_ASSUME_NONNULL_END
