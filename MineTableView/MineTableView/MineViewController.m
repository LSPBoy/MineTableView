//
//  MineViewController.m
//  MineTableView
//
//  Created by Object on 2018/3/18.
//  Copyright © 2018年 lsp. All rights reserved.
//

#import "MineViewController.h"
#import "MineGroupModel.h"
#import "MineArrowItem.h"
#import "SettingViewController.h"
@interface MineViewController ()

@end

@implementation MineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"设置" style:UIBarButtonItemStylePlain target:self action:@selector(setting)];
    
    [self setupGroup0];
    [self setupGroup1];
    [self setupGroup2];
    [self setupGroup3];
}

- (void)setting
{
    SettingViewController *sys = [[SettingViewController alloc] init];
    [self.navigationController pushViewController:sys animated:YES];
}

- (void)setupGroup0
{
    MineGroupModel *group = [self addGroup];
    
    MineArrowItem *newFriend = [MineArrowItem itemWithIcon:@"new_friend" title:@"新的好友" destVcClass:nil];
    newFriend.badgeValue = @"4";
    group.items = @[newFriend];
}

- (void)setupGroup1
{
    MineGroupModel *group = [self addGroup];
    
    MineArrowItem *album = [MineArrowItem itemWithIcon:@"album" title:@"我的相册" destVcClass:nil];
    album.subtitle = @"(109)";
    MineArrowItem *collect = [MineArrowItem itemWithIcon:@"collect" title:@"我的收藏" destVcClass:nil];
    collect.subtitle = @"(0)";
    MineArrowItem *like = [MineArrowItem itemWithIcon:@"like" title:@"赞" destVcClass:nil];
    like.badgeValue = @"1";
    like.subtitle = @"(35)";
    group.items = @[album, collect, like];
}

- (void)setupGroup2
{
    MineGroupModel *group = [self addGroup];
    
    MineArrowItem *pay = [MineArrowItem itemWithIcon:@"pay" title:@"微博支付" destVcClass:nil];
    MineArrowItem *vip = [MineArrowItem itemWithIcon:@"vip" title:@"会员中心" destVcClass:nil];
    group.items = @[pay, vip];
}

- (void)setupGroup3
{
    MineGroupModel *group = [self addGroup];
    
    MineArrowItem *card = [MineArrowItem itemWithIcon:@"card" title:@"我的名片" destVcClass:nil];
    MineArrowItem *draft = [MineArrowItem itemWithIcon:@"draft" title:@"草稿箱" destVcClass:nil];
    group.items = @[card, draft];
}


@end
