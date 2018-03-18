//
//  MineBaseTableViewItem.h
//  MineTableView
//
//  Created by Object on 2018/3/18.
//  Copyright © 2018年 lsp. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^ItemOptionBlock)(void);

@interface MineBaseTableViewItem : NSObject
/**
 标题
 */
@property (copy, nonatomic) NSString *title;
/**
 子标题
 */
@property (copy, nonatomic) NSString *subtitle;
/**
 图标
 */
@property (copy, nonatomic) NSString *icon;
/**
 小红点
 */
@property (copy, nonatomic) NSString *badgeValue;
/**
 点击每一个Item的操作
 */
@property (copy, nonatomic) ItemOptionBlock option;


+ (instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title;
+ (instancetype)itemWithTitle:(NSString *)title;
+ (instancetype)item;

@end
