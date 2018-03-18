//
//  MineArrowItem.h
//  MineTableView
//
//  Created by Object on 2018/3/18.
//  Copyright © 2018年 lsp. All rights reserved.
//

#import "MineBaseTableViewItem.h"

typedef void (^ArrowItemReadyForDestVc)(id item, id destVc);

@interface MineArrowItem : MineBaseTableViewItem

@property (assign, nonatomic) Class destVcClass;

@property (copy, nonatomic) ArrowItemReadyForDestVc readyForDestVc;

+ (instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title destVcClass:(Class)destVcClass;
+ (instancetype)itemWithTitle:(NSString *)title destVcClass:(Class)destVcClass;

@end
