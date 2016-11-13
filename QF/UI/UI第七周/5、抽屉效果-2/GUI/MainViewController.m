//
//  MainViewController.m
//  抽屉效果
//
//  Created by chen cheng on 14-8-28.
//  Copyright (c) 2014年 chen cheng. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (id)init
{
    self = [super init];
    if (self != nil)
    {
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *settingButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [settingButton setTitle:@"左设置" forState:UIControlStateNormal];
    [settingButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    settingButton.frame = CGRectMake(10, 30, 60, 40);
    [settingButton addTarget:self action:@selector(settingButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:settingButton];
    
    
    UIButton *settingButton2 = [UIButton buttonWithType:UIButtonTypeCustom];
    [settingButton2 setTitle:@"右设置" forState:UIControlStateNormal];
    [settingButton2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    settingButton2.frame = CGRectMake(260, 30, 60, 40);
    [settingButton2 addTarget:self action:@selector(settingButton2Click:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:settingButton2];

    
    
    self.leftDrawerViewController = [[[LeftDrawerViewController alloc] init] autorelease];
    
    self.rightDrawerViewController = [[[RightDrawerViewController alloc] init] autorelease];

}

- (void)settingButtonClick:(id)sender
{
    [self showLeftLeftDrawerView];
}

- (void)settingButton2Click:(id)sender
{
    [self showDrawerView];
}

@end
