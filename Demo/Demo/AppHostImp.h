//
//  AppHostImp.h
//  xuetangX-iPad
//
//  Created by ruipeng on 16/4/19.
//  Copyright © 2016年 北京慕华信息科技有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppHostProtocal.h"
@class AppEditHost;
@interface AppHostImp : NSObject<AppHostProtocal>
@property (nonatomic,strong,readonly) AppEditHost *editHost;
@end
