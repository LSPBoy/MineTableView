//
//  ThemeBgViewController.m
//  示例-ItcastWeibo
//
//  Created by MJ Lee on 14-5-4.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "ThemeBgViewController.h"
#import "MineArrowItem.h"
#import "MineGroupModel.h"

@interface ThemeBgViewController ()

@end

@implementation ThemeBgViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setupGroup0];
    [self setupGroup1];
}

- (void)setupGroup0
{
    MineGroupModel *group = [self addGroup];
    
    MineArrowItem *theme = [MineArrowItem itemWithTitle:@"主题"];
    group.items = @[theme];
}

- (void)setupGroup1
{
    MineGroupModel *group = [self addGroup];
    
    MineArrowItem *bg = [MineArrowItem itemWithTitle:@"背景"];
    group.items = @[bg];
}

@end
