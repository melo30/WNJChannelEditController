//
//  UIColor+WNJChannelHelper.h
//  WNJChannelEditController
//
//  Created by 陈诚 on 2020/11/6.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (WNJChannelHelper)

+ (nullable UIColor *)colorWithHexString:(NSString *)hexStr;

+ (nullable UIColor *)colorWithHexString:(NSString *)hexStr alpha:(CGFloat)alpha;

@end

NS_ASSUME_NONNULL_END
