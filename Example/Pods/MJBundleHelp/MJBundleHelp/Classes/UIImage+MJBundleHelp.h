//
//  UIImage+MJBundleHelp.h
//  MJBundleHelp
//
//  Created by manjiwang on 2019/4/4.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (MJBundleHelp)

+ (UIImage *)bundleKey:(NSString *)key imageName:(NSString *)imageName;

+ (UIImage *)bundleKey:(NSString *)key imageName:(NSString *)imageName ofType:(NSString *)type;
@end

NS_ASSUME_NONNULL_END
