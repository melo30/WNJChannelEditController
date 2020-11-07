//
//  WNJTouchView.m
//  WNJChannelEditController
//
//  Created by 陈诚 on 2020/3/6.
//  Copyright © 2020年 陈诚. All rights reserved.
//

#import "WNJTouchView.h"
#import "UIImage+EZBundleHelp.h"

@implementation WNJTouchView

-(float)getTextSizeWithInOrOut:(BOOL)inOrOut{
    if (inOrOut) {
        return 15.0;
    }else{
        return 13.0;
    }
}

-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor clearColor];
        self.contentLabel = [[UILabel alloc] initWithFrame:CGRectMake(5, 5, self.bounds.size.width - 10, self.bounds.size.height - 10)];
        self.contentLabel.textAlignment = NSTextAlignmentCenter;
//        self.contentLabel.layer.masksToBounds = YES;
//        self.contentLabel.layer.cornerRadius = 5;
        self.contentLabel.backgroundColor = [UIColor colorWithRed:236.0/255.0 green:236.0/255.0 blue:236.0/255.0 alpha:1.0];
        self.contentLabel.font = [UIFont systemFontOfSize:[self getTextSizeWithInOrOut:NO]];
        self.contentLabel.textColor = [UIColor colorWithRed:51.0/255.0 green:51.0/255.0 blue:51.0/255.0 alpha:1.0];
        [self addSubview:self.contentLabel];
        
        self.closeImageView = [[UIImageView alloc] initWithFrame:CGRectMake(self.bounds.size.width - 16.5, 1.5, 15, 15)];
        self.closeImageView.hidden = YES;
//        self.closeImageView.image = [UIImage imageMyBundleNamed:@"del"];
        self.closeImageView.image = [UIImage imageNamed:@"WNJHomePage_channelDelete"];
        [self addSubview:self.closeImageView];
    }
    return self;
}

-(void)inOrOutTouching:(BOOL)inOrOut{
    if (inOrOut) {
        self.contentLabel.frame = self.bounds;
        self.contentLabel.font = [UIFont systemFontOfSize:[self getTextSizeWithInOrOut:YES]];
        self.backgroundColor = self.contentLabel.backgroundColor;
        self.alpha = 0.7;
        self.contentLabel.alpha = 0.7;
    }else{
        self.contentLabel.frame = CGRectMake(5, 5, self.bounds.size.width - 10, self.bounds.size.height - 10);
        self.contentLabel.font = [UIFont systemFontOfSize:[self getTextSizeWithInOrOut:NO]];
        self.backgroundColor = [UIColor clearColor];
        self.alpha = 1.0;
        self.contentLabel.alpha = 1.0;
    }
}
@end
