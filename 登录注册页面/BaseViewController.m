//
//  BaseViewController.m
//  登录注册页面
//
//  Created by Lucky on 16/3/10.
//  Copyright © 2016年 AaronTKD_GEELY. All rights reserved.
//

#import "BaseViewController.h"
#import "AaroControlKit.h"
#define kWidth [UIScreen mainScreen].bounds.size.width
#define kHeight [UIScreen mainScreen].bounds.size.height



//宽比例为 225/375 = 0.6
//高比例为 88/1334 = 0.66
//距离顶部距离 213/1334 = 0.16
#define kPhoneNumberViewWidth 0.6*([UIScreen mainScreen].bounds.size.width)
#define kPhoneNumberViewHeight 0.066*([UIScreen mainScreen].bounds.size.height)
#define kLeftGap ([UIScreen mainScreen].bounds.size.width*(1-0.6))/2
#define kTopGap 0.16*([UIScreen mainScreen].bounds.size.height)

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];

//    NSLog(@"%f",kWidth);
//    NSLog(@"%f",kPhoneNumberViewWidth);
////    AaroPhoneNumberView *aaro = [[AaroPhoneNumberView alloc] initWithFrame:CGRectMake(kLeftGap, kTopGap, kPhoneNumberViewWidth, kPhoneNumberViewHeight)];
    AaroPhoneNumberView *aaro = [[AaroPhoneNumberView alloc]init];
    [self.view addSubview:aaro];
//    AaroPassWordView *word = [AaroPassWordView passWordViewWithType:AaroPassWordTypeLogin];
//    [self.view addSubview:word];

    AaroForgetPasswordButton *bugton = [[AaroForgetPasswordButton alloc] init];
    [self.view addSubview:bugton];
    
    AaroGuideButton *guide = [AaroGuideButton buttonWithAaroGuideType:AaroGuideButtonTypeFinishChanges];
    [self.view addSubview:guide];
//
    AaroCancelButton *cancel = [[AaroCancelButton alloc] init];
    [self.view addSubview:cancel];
//
    AaroVerificationCodeView *code = [[AaroVerificationCodeView alloc] init];
    [self.view addSubview:code];
    
    AaroAgreementView *agreement = [[AaroAgreementView alloc] init];
    [self.view addSubview:agreement];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
