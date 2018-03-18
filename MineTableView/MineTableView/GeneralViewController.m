//
//  GeneralViewController.m
//  示例-ItcastWeibo
//
//  Created by MJ Lee on 14-5-4.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "GeneralViewController.h"
#import "MineArrowItem.h"
#import "MineSwitchItem.h"
#import "MineLabelItem.h"
#import "MineGroupModel.h"
#import "ReadModeViewController.h"
#import "FontViewController.h"
#import "LanguageViewController.h"
#import "IconQualityViewController.h"

@interface GeneralViewController ()

@end

@implementation GeneralViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setupGroup0];
    [self setupGroup1];
    [self setupGroup2];
    [self setupGroup3];
    [self setupGroup4];
}

- (void)setupGroup0
{
    MineGroupModel *group = [self addGroup];
    
    MineLabelItem *read = [MineLabelItem itemWithTitle:@"阅读模式" destVcClass:[ReadModeViewController class]];
    read.defaultText = @"有图模式";
    read.readyForDestVc = ^(MineLabelItem *item, ReadModeViewController *destVc){
        destVc.sourceItem = item;
    };
    
    MineLabelItem *font = [MineLabelItem itemWithTitle:@"字号大小" destVcClass:[FontViewController class]];
    font.defaultText = @"中";
    font.readyForDestVc = ^(MineLabelItem *item, FontViewController *destVc){
        destVc.sourceItem = item;
    };
    
    MineSwitchItem *mark = [MineSwitchItem itemWithTitle:@"显示备注"];
    
    group.items = @[read, font, mark];
}

- (void)setupGroup1
{
    MineGroupModel *group = [self addGroup];
    
    MineArrowItem *picture = [MineArrowItem itemWithTitle:@"图片质量设置" destVcClass:[IconQualityViewController class]];
    group.items = @[picture];
}

- (void)setupGroup2
{
    MineGroupModel *group = [self addGroup];
    
    MineSwitchItem *voice = [MineSwitchItem itemWithTitle:@"声音"];
    group.items = @[voice];
}

- (void)setupGroup3
{
    MineGroupModel *group = [self addGroup];
    
    MineLabelItem *language = [MineLabelItem itemWithTitle:@"多语言环境" destVcClass:[LanguageViewController class]];
    language.defaultText = @"跟随系统";
    language.readyForDestVc = ^(MineLabelItem *item, LanguageViewController *destVc){
        destVc.sourceItem = item;
    };
    group.items = @[language];
}

- (void)setupGroup4
{
    MineGroupModel *group = [self addGroup];
    
    MineArrowItem *clearCache = [MineArrowItem itemWithTitle:@"清除图片缓存"];
    MineArrowItem *clearHistory = [MineArrowItem itemWithTitle:@"清空搜索历史"];
    group.items = @[clearCache, clearHistory];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [self.tableView reloadData];
}

@end
