//
//  AppHostImp.m
//  xuetangX-iPad
//
//  Created by ruipeng on 16/4/19.
//  Copyright © 2016年 北京慕华信息科技有限公司. All rights reserved.
//

#import "AppHostImp.h"
#import "AppEditHost.h"
#import <UIKit/UIKit.h>
#define XTXDEBUGHOST @"http://192.168.200.150"
#define XTXRELEASEHOST @"http://www.baidu.com"
@interface AppHostImp()<UIAlertViewDelegate>
///主机地址
@property (nonatomic,copy,readwrite) NSString *host;

///api服务器地址
@property (nonatomic,copy,readwrite) NSString *apiHost;

@property (nonatomic,strong,readwrite) AppEditHost *editHost;

@end

@implementation AppHostImp
@synthesize host = _host;
@synthesize apiHost = _apiHost;


- (id)init
{
    if (self = [super init]) {
        
        self.editHost = [[AppEditHost alloc] init];
        
#ifdef DEBUG
        NSString *host = XTXDEBUGHOST;
#else
        NSString *host = XTXRELEASEHOST;
#endif
        
        if (self.editHost.name && self.editHost.name.length != 0) {
            self.host = self.editHost.name;
        }else{
            self.host = host;
        }
        
        self.apiHost = [NSString stringWithFormat:@"%@/api",self.host];
    }
    return self;
}

- (void)hostShouldBeginToEdit
{
    [_editHost beginToEditWithCurrentHost:self.host];
}

- (void)clearEditHost
{
    [_editHost clear];
}

@end
