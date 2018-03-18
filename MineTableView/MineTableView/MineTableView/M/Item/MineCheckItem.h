//
//  MineCheckItem.h
//  MineTableView
//
//  Created by Object on 2018/3/18.
//  Copyright © 2018年 lsp. All rights reserved.
//

#import "MineBaseTableViewItem.h"

@interface MineCheckItem : MineBaseTableViewItem

@property (assign, nonatomic, getter = isChecked) BOOL checked;

@end
