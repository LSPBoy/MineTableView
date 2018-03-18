//
//  MineLabelItem.m
//  MineTableView
//
//  Created by Object on 2018/3/18.
//  Copyright © 2018年 lsp. All rights reserved.
//

#import "MineLabelItem.h"

@implementation MineLabelItem

- (NSString *)text
{
    id value = [[NSUserDefaults standardUserDefaults] objectForKey:self.key];
    if (value == nil) {
        return self.defaultText;
    } else {
        return value;
    }
}

- (void)setText:(NSString *)text
{
    [[NSUserDefaults standardUserDefaults] setObject:text forKey:self.key];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

@end
