//
//  MineTableViewController.h
//  MineTableView
//
//  Created by Object on 2018/3/18.
//  Copyright © 2018年 lsp. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MineGroupModel;

@interface MineTableViewController : UITableViewController

@property (strong, nonatomic) NSMutableArray *groups;

- (MineGroupModel *)addGroup;

@end
