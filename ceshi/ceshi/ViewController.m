//
//  ViewController.m
//  ceshi
//
//  Created by 徐月娟 on 17/8/30.
//  Copyright © 2017年 徐月娟. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 200, 100, 30)];
    btn.backgroundColor = [UIColor redColor];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)btnAction:(UIButton *)sender {
    short a[4] = {3,7,9,1};
    int *p1 = a;
    char *p2 = a;
    NSLog(@"p1======%d", *p1);
    NSLog(@"p2=======%c", *p2);
    return;
    SecondViewController *secondVC = [SecondViewController new];
    [self.navigationController pushViewController:secondVC animated:YES];
//    [self presentViewController:secondVC animated:YES completion:nil];
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
