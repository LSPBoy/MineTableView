//
//  SettingViewController.m
//  MineTableView
//
//  Created by Object on 2018/3/18.
//  Copyright © 2018年 lsp. All rights reserved.
//

#import "SettingViewController.h"
#import "MineGroupModel.h"
#import "MineArrowItem.h"
#import "ThemeBgViewController.h"
#import "GeneralViewController.h"
#import "UIImage+Extension.h"
@interface SettingViewController ()

@end

@implementation SettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"设置";
    
    [self setupGroup0];
    [self setupGroup1];
    [self setupGroup2];
    [self setupGroup3];
    
    [self setupFooter];
}

- (void)setupFooter
{
    // 按钮
    UIButton *logoutButton = [[UIButton alloc] init];
    CGFloat logoutX = 15;
    CGFloat logoutY = 0;
    CGFloat logoutW = self.tableView.frame.size.width - 2 * logoutX;
    CGFloat logoutH = 44;
    logoutButton.frame = CGRectMake(logoutX, logoutY, logoutW, logoutH);
    
    // 背景和文字
    [logoutButton setBackgroundImage:[UIImage resizedImageWithName:@"common_button_red"] forState:UIControlStateNormal];
    [logoutButton setBackgroundImage:[UIImage resizedImageWithName:@"common_button_red_highlighted"] forState:UIControlStateHighlighted];
    [logoutButton setTitle:@"退出当前帐号" forState:UIControlStateNormal];
    logoutButton.titleLabel.font = [UIFont systemFontOfSize:14];
    [logoutButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    
    // footer
    UIView *footer = [[UIView alloc] init];
    CGFloat footerH = logoutH;
    footer.frame = CGRectMake(0, 0, 0, footerH);
    self.tableView.tableFooterView = footer;
    [footer addSubview:logoutButton];
}

- (void)setupGroup0
{
    MineGroupModel *group = [self addGroup];
    
    MineArrowItem *account = [MineArrowItem itemWithTitle:@"帐号管理"];
    group.items = @[account];
}

- (void)setupGroup1
{
    MineGroupModel *group = [self addGroup];
    
    MineArrowItem *theme = [MineArrowItem itemWithTitle:@"主题、背景" destVcClass:[ThemeBgViewController class]];
    group.items = @[theme];
}

- (void)setupGroup2
{
    MineGroupModel *group = [self addGroup];
    
    MineArrowItem *notice = [MineArrowItem itemWithTitle:@"通知和提醒"];
    MineArrowItem *general = [MineArrowItem itemWithTitle:@"通用设置" destVcClass:[GeneralViewController class]];
    MineArrowItem *safe = [MineArrowItem itemWithTitle:@"隐私与安全"];
    group.items = @[notice, general, safe];
}

- (void)setupGroup3
{
    MineGroupModel *group = [self addGroup];
    
    MineArrowItem *opinion = [MineArrowItem itemWithTitle:@"意见反馈"];
    MineArrowItem *about = [MineArrowItem itemWithTitle:@"关于微博"];
    group.items = @[opinion, about];
}




@end
