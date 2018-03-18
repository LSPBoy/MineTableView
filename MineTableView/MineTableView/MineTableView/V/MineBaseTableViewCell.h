//
//  MineBaseTableViewCell.h
//  MineTableView
//
//  Created by Object on 2018/3/18.
//  Copyright © 2018年 lsp. All rights reserved.
//

#import "MineBaseFatherTableViewCell.h"

@class MineBaseTableViewItem;
@interface MineBaseTableViewCell : MineBaseFatherTableViewCell

@property (strong, nonatomic) MineBaseTableViewItem *item;
@property (strong, nonatomic) NSIndexPath *indexPath;

+ (instancetype)cellWithTableView:(UITableView *)tableView;

@end
