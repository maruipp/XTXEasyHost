//
//  ViewController.m
//  Demo
//
//  Created by ruipeng on 16/4/25.
//  Copyright © 2016年 Beijing Muhua inc. All rights reserved.
//

#import "ViewController.h"
#import "AppHostImp.h"
@interface ViewController ()<UIAlertViewDelegate>
@property (nonatomic,strong) AppHostImp *hostImp;
@property (weak, nonatomic) IBOutlet UILabel *hostLabel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.hostImp = [[AppHostImp alloc] init];
    self.hostLabel.text = [NSString stringWithFormat:@"当前host: %@",self.hostImp.host];
}

- (IBAction)editHostBtnTapped:(id)sender {
    [self.hostImp hostShouldBeginToEdit];
}
- (IBAction)clearEditedHostBtnTapped:(id)sender {
    [self.hostImp clearEditHost];
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:nil message:@"host已经成功修改，请重启应用以查看" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
    [alertView show];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    exit(0);
}

@end
