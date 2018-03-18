//
//  FontViewController.m
//  示例-ItcastWeibo
//
//  Created by MJ Lee on 14-5-4.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "FontViewController.h"
#import "MineCheckItem.h"
#import "MineCheckGroup.h"
#import "MineLabelItem.h"

@interface FontViewController ()
@end

@implementation FontViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // 添加组
    MineCheckGroup *group = [MineCheckGroup group];
    [self.groups addObject:group];
    
    // 设置数据
    MineCheckItem *big = [MineCheckItem itemWithTitle:@"大"];
    MineCheckItem *middle = [MineCheckItem itemWithTitle:@"中"];
    MineCheckItem *small = [MineCheckItem itemWithTitle:@"小"];
    group.items = @[big, middle, small];
    
    // 设置来源
    group.sourceItem = self.sourceItem;
}


@end
