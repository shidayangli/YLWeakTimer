//
//  ViewController.m
//  YLWeakTimer
//
//  Created by 杨立 on 2017/6/14.
//  Copyright © 2017年 BigCompany. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UIButton *presentButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.presentButton = ({
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.backgroundColor = [UIColor greenColor];
        button.frame = CGRectMake(100, 100, 100, 100);
        [button addTarget:self action:@selector(presentDetailViewController) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:button];
        button;
    });
}

- (void)presentDetailViewController {
    DetailViewController *detaiViewController = [[DetailViewController alloc] init];
    detaiViewController.view.backgroundColor = [UIColor whiteColor];
    [self presentViewController:detaiViewController animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
