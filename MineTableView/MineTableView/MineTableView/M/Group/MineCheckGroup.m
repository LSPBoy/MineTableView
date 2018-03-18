//
//  MineCheckGroup.m
//  示例-ItcastWeibo
//
//  Created by MJ Lee on 14-5-4.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "MineCheckGroup.h"
#import "MineCheckItem.h"
#import "MineLabelItem.h"

@implementation MineCheckGroup

- (MineCheckItem *)checkedItem
{
    for (MineCheckItem *item in self.items) {
        if (item.isChecked) return item;
    }
    return nil;
}

- (void)setCheckedItem:(MineCheckItem *)checkedItem
{
    for (MineCheckItem *item in self.items) {
        item.checked = (item == checkedItem);
    }
    self.sourceItem.text = checkedItem.title;
}

- (NSInteger)checkedIndex
{
    MineCheckItem *item = self.checkedItem;
    return item ? [self.items indexOfObject:item] : -1;
}

- (void)setCheckedIndex:(NSInteger)checkedIndex
{
    if (checkedIndex < 0 || checkedIndex >= self.items.count) return;
    
    self.checkedItem = self.items[checkedIndex];
}

- (void)setItems:(NSArray *)items
{
    [super setItems:items];
    
    self.checkedIndex = self.checkedIndex;
    self.checkedItem = self.checkedItem;
    self.sourceItem = self.sourceItem;
}

- (void)setSourceItem:(MineLabelItem *)sourceItem
{
    _sourceItem = sourceItem;
    
    for (MineCheckItem *item in self.items) {
        item.checked = [item.title isEqualToString:sourceItem.text];
    }
}
@end
