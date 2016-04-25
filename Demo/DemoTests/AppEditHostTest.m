//
//  AppEditHost.m
//  xuetangX-iPad
//
//  Created by ruipeng on 16/4/25.
//  Copyright © 2016年 北京慕华信息科技有限公司. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "AppEditHost.h"
@interface AppEditHostTest : XCTestCase
{
    AppEditHost *_editHost;
}
@end

@implementation AppEditHostTest

- (void)setUp {
    [super setUp];
    _editHost = [[AppEditHost alloc] init];
}

- (void)tearDown {
    [_editHost clear];
    [super tearDown];
}

- (void)testEditHostChangeOk {
    NSString *testHost = @"127.0.0.1";
    [_editHost setName:testHost];
    AppEditHost *editHost = [[AppEditHost alloc] init];
    XCTAssertEqualObjects([@"http://" stringByAppendingString:testHost], editHost.name);
}

- (void)testEditHostWithHttpPrefixChangeOk {
    NSString *testHost = @"http://127.0.0.1";
    [_editHost setName:testHost];
    AppEditHost *editHost = [[AppEditHost alloc] init];
    XCTAssertEqualObjects(testHost, editHost.name);
}

@end
