//
//  AppHostProtocal.h
//  xuetangX-iPad
//
//  Created by ruipeng on 16/4/19.
//  Copyright © 2016年 北京慕华信息科技有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol AppHostProtocal <NSObject>
///主机地址
@property (nonatomic,copy,readonly) NSString *host;
///api服务器地址
@property (nonatomic,copy,readonly) NSString *apiHost;

///调用host编辑文本框
- (void)hostShouldBeginToEdit;

- (void)clearEditHost;

@end
