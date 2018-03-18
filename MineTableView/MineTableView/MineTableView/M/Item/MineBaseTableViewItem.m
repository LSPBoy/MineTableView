//
//  MineBaseTableViewItem.m
//  MineTableView
//
//  Created by Object on 2018/3/18.
//  Copyright © 2018年 lsp. All rights reserved.
//

#import "MineBaseTableViewItem.h"

@implementation MineBaseTableViewItem

+ (instancetype)item
{
    return [[self alloc] init];
}

+ (instancetype)itemWithTitle:(NSString *)title
{
    return [self itemWithIcon:nil title:title];
}

+ (instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title
{
    MineBaseTableViewItem *item = [self item];
    item.icon = icon;
    item.title = title;
    return item;
}

@end
