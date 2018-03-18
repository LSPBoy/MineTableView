//
//  MineCheckGroup.h
//  示例-ItcastWeibo
//
//  Created by MJ Lee on 14-5-4.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "MineGroupModel.h"
@class MineCheckItem, MineLabelItem;

@interface MineCheckGroup : MineGroupModel
/**
 *  选中的索引
 */
@property (assign, nonatomic) NSInteger checkedIndex;

/**
 *  选中的item
 */
@property (strong, nonatomic) MineCheckItem *checkedItem;

/**
 *  来源于哪个item
 */
@property (strong, nonatomic) MineLabelItem *sourceItem;
@end
