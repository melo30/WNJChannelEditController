//
//  WNJChannelEditController.h
//  WNJChannelEditController
//
//  Created by 陈诚 on 2020/3/6.
//  Copyright © 2020年 陈诚. All rights reserved.
//

#import "WNJChannelUnitModel.h"

#import <UIKit/UIKit.h>

@interface WNJChannelEditController : UIViewController

-(id)initWithTopDataSource:(NSArray<WNJChannelUnitModel *> *)topDataArr andBottomDataSource:(NSArray<WNJChannelUnitModel *> *)bottomDataSource andInitialIndex:(NSInteger)initialIndex;

/**
 @b 固定按钮的数量, 默认为0, 必须小于 topDataArr 的数量
 */
@property (assign, nonatomic) NSUInteger fixedCount;

/**
 * @b 编辑后, 删除初始选中项排序的回调
 */
@property (nonatomic, copy) void(^removeInitialIndexBlock)(NSMutableArray<WNJChannelUnitModel *> *topArr, NSMutableArray<WNJChannelUnitModel *> *bottomArr);

/**
 * @b 选中某一个频道回调
 */
@property (nonatomic, copy) void(^chooseIndexBlock)(NSInteger index, NSMutableArray<WNJChannelUnitModel *> *topArr, NSMutableArray<WNJChannelUnitModel *> *bottomArr);

@end
