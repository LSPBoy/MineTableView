//
//  LanguageViewController.m
//  示例-ItcastWeibo
//
//  Created by MJ Lee on 14-5-4.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "LanguageViewController.h"
#import "MineCheckItem.h"
#import "MineCheckGroup.h"
#import "MineLabelItem.h"

@interface LanguageViewController ()

@end

@implementation LanguageViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // 添加组
    MineCheckGroup *group = [MineCheckGroup group];
    [self.groups addObject:group];
    
    // 设置数据
    MineCheckItem *sys = [MineCheckItem itemWithTitle:@"跟随系统"];
    MineCheckItem *simple = [MineCheckItem itemWithTitle:@"简体中文"];
    MineCheckItem *complex = [MineCheckItem itemWithTitle:@"繁體中文"];
    MineCheckItem *english = [MineCheckItem itemWithTitle:@"English"];
    group.items = @[sys, simple, complex, english];
    
    // 设置来源
    group.sourceItem = self.sourceItem;
}

@end
