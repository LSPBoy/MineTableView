//
//  MineValueItem.m
//  MineTableView
//
//  Created by Object on 2018/3/18.
//  Copyright © 2018年 lsp. All rights reserved.
//

#import "MineValueItem.h"

@implementation MineValueItem

- (NSString *)key
{
    return _key ? _key : self.title;
}

@end
