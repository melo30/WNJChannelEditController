//
//  WNJTouchView.h
//  WNJChannelEditController
//
//  Created by 陈诚 on 2020/3/6.
//  Copyright © 2020年 陈诚. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WNJTouchView : UIView

@property (nonatomic, strong) UILabel *contentLabel;
@property (nonatomic, strong) UIImageView *closeImageView;
@property (nonatomic, strong) UIPanGestureRecognizer *pan;
@property (nonatomic, strong) UITapGestureRecognizer *tap;
@property (nonatomic, strong) UILongPressGestureRecognizer *longPress;

-(void)inOrOutTouching:(BOOL)inOrOut;

@end
