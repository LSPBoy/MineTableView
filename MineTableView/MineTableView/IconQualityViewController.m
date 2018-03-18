//
//  IconQualityViewController.m
//  示例-ItcastWeibo
//
//  Created by MJ Lee on 14-5-4.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "IconQualityViewController.h"
#import "MineLabelItem.h"
#import "MineCheckItem.h"
#import "MineCheckGroup.h"

@interface IconQualityViewController ()

@end

@implementation IconQualityViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.tableView.contentInset = UIEdgeInsetsMake(15, 0, 0, 0);
    
    
    [self setupGroup0];
    [self setupGroup1];
}

- (void)setupGroupWithHeader:(NSString *)header
{
    // 添加组
    MineCheckGroup *group = [MineCheckGroup group];
    group.header = header;
    [self.groups addObject:group];
    
    // 设置数据
    MineCheckItem *high = [MineCheckItem itemWithTitle:@"高清"];
    high.subtitle = @"(建议在wifi或3G网络使用)";
    MineCheckItem *normal = [MineCheckItem itemWithTitle:@"普通"];
    normal.subtitle = @"(上传速度快，省流量)";
    group.items = @[high, normal];
    
    MineLabelItem *item = [MineLabelItem item];
    item.key = group.header;
    item.defaultText = high.title;
    group.sourceItem = item;
}

- (void)setupGroup0
{
    [self setupGroupWithHeader:@"上传图片质量"];
}

- (void)setupGroup1
{
    [self setupGroupWithHeader:@"下载图片质量"];
}

@end
