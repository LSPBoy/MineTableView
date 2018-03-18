//
//  ReadModeViewController.m
//  示例-ItcastWeibo
//
//  Created by MJ Lee on 14-5-4.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "ReadModeViewController.h"
#import "MineCheckItem.h"
#import "MineSwitchItem.h"
#import "MineLabelItem.h"
#import "MineCheckGroup.h"

@interface ReadModeViewController ()

@end

@implementation ReadModeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setupGroup0];
    [self setupGroup1];
}

- (void)setupGroup0
{
    // 添加组
    MineCheckGroup *group = [MineCheckGroup group];
    [self.groups addObject:group];
    
    // 设置数据
    MineCheckItem *with = [MineCheckItem itemWithTitle:@"有图模式"];
    MineCheckItem *without = [MineCheckItem itemWithTitle:@"无图模式"];
    group.items = @[with, without];
    
    // 设置来源
    group.sourceItem = self.sourceItem;
}

- (void)setupGroup1
{
    MineGroupModel *group = [self addGroup];
    
    MineSwitchItem *show = [MineSwitchItem itemWithTitle:@"显示缩略微博"];
    
    group.items = @[show];
}
@end
