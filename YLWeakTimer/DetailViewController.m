//
//  DetailViewController.m
//  YLWeakTimer
//
//  Created by 杨立 on 2017/6/14.
//  Copyright © 2017年 BigCompany. All rights reserved.
//

#import "DetailViewController.h"
#import "YLWeakTimer.h"

@interface DetailViewController ()

@property (nonatomic, strong) NSTimer *timer;
@property (nonatomic, strong) UIButton *dismissButton;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.timer = [YLWeakTimer scheduledTimerWithTimeInterval:1.0f target:self selector:@selector(testWeakTimer:) userInfo:@"Hello Word" repeats:YES];
    
    self.dismissButton = ({
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake(100, 100, 100, 100);
        button.backgroundColor = [UIColor redColor];
        [button addTarget:self action:@selector(dismissDetaiViewController) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:button];
        button;
    });
}

- (void)testWeakTimer:(id)userinfo {
    NSString *info = (NSString *)userinfo;
    NSLog(@"%@", info);
}

- (void)dismissDetaiViewController {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)dealloc {
    NSLog(@"dealloc");
    [self.timer invalidate];
}

@end
