//
//  AppEditHost.h
//  xuetangX-iPad
//
//  Created by ruipeng on 16/4/25.
//  Copyright © 2016年 北京慕华信息科技有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AppEditHost : NSObject
///编辑过的host名
@property (nonatomic,copy) NSString *name;

- (void)beginToEditWithCurrentHost:(NSString *)host;

- (void)clear;

@end
