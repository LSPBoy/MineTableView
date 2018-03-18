//
//  MineGroupModel.h
//  MineTableView
//
//  Created by Object on 2018/3/18.
//  Copyright © 2018年 lsp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MineGroupModel : NSObject

@property (copy, nonatomic) NSString *header;
@property (copy, nonatomic) NSString *footer;
@property (strong, nonatomic) NSArray *items;

+ (instancetype)group;

@end
