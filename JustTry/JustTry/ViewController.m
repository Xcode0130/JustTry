//
//  ViewController.m
//  JustTry
//
//  Created by DEMO on 16/1/29.
//  Copyright © 2016年 DEMO. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UILabel * lblShow = ({
        UILabel * lbl = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
        lbl.numberOfLines = 0;
        lbl.text = @"CI测试";
        lbl.textAlignment = NSTextAlignmentCenter;
        lbl.font = [UIFont systemFontOfSize:50];
        lbl;
    });
    [self.view addSubview:lblShow];
    
    UIButton * btnTest = ({
        UIButton * btn = [[UIButton alloc] initWithFrame:CGRectMake(40, 44, [UIScreen mainScreen].bounds.size.width - 80, 44)];
        [btn addTarget:self action:@selector(Test:) forControlEvents:UIControlEventTouchUpInside];
        [btn setTitle:@"btn" forState:UIControlStateNormal];
        [btn setBackgroundColor:[UIColor blueColor]];
        btn;
    });
                          
    [self.view addSubview:btnTest];
    
    [self Test];
    [self Test];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)Test {
    NSLog(@"button tap");
}
- (void)Test:(UIButton *)sender {
    NSLog(@"button tap");
}
@end