//
//  MineSwitchItem.m
//  MineTableView
//
//  Created by Object on 2018/3/18.
//  Copyright © 2018年 lsp. All rights reserved.
//

#import "MineSwitchItem.h"

@implementation MineSwitchItem

- (id)init
{
    if (self = [super init]) {
        self.defaultOn = YES;
    }
    return self;
}

- (BOOL)isOn
{
    id value = [[NSUserDefaults standardUserDefaults] objectForKey:self.key];
    if (value == nil) {
        return self.isDefaultOn;
    } else {
        return [value boolValue];
    }
}

- (void)setOn:(BOOL)on
{
    [[NSUserDefaults standardUserDefaults] setBool:on forKey:self.key];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

@end
