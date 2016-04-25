//
//  AppEditHost.m
//  xuetangX-iPad
//
//  Created by ruipeng on 16/4/25.
//  Copyright © 2016年 北京慕华信息科技有限公司. All rights reserved.
//

#import "AppEditHost.h"
#import <UIKit/UIKit.h>
#define XTXHostStorageKey @"XTXHostStorageKey"

@interface AppEditHost()

@end
@implementation AppEditHost
@synthesize name = _name;

- (instancetype)init
{
    if (self = [super init]) {
        //读取存储的数据
        NSString *editedHost = [[NSUserDefaults standardUserDefaults] objectForKey:XTXHostStorageKey];
        self.name = editedHost;
    }
    return self;
}

- (void)beginToEditWithCurrentHost:(NSString *)host
{
    NSString *title = nil;
    title = [NSString stringWithFormat:@"当前host：\n%@",host];
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title message:@"更改host成功后将自动关闭应用" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
    alert.alertViewStyle = UIAlertViewStylePlainTextInput;
    UITextField *textField = [alert textFieldAtIndex:0];
    textField.placeholder = @"eg: 192.168.9.196";
    [alert show];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (1 == buttonIndex) {
        UITextField *textField = [alertView textFieldAtIndex:0];
        self.name = textField.text;
        if (_name.length > 0) {
            exit(0);
        }
    }
}

- (void)setName:(NSString *)editHost
{
    if (!editHost || 0 == editHost.length) {
        return;
    }
    if (![editHost containsString:@"http://"]) {
        editHost = [NSString stringWithFormat:@"http://%@",editHost];
    }
    _name = [editHost copy];
    [[NSUserDefaults standardUserDefaults] setObject:_name forKey:XTXHostStorageKey];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (void)clear
{
    [[NSUserDefaults standardUserDefaults] setObject:nil forKey:XTXHostStorageKey];
}

@end
