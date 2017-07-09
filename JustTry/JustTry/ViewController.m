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
//    [self.view addSubview:lblShow];
    
    //test
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
    
    __block NSMutableArray * arr = [[NSMutableArray alloc] initWithCapacity:1];
    NSArray * arr2 = nil;
    NSLog(@"%d",[arr2 count]);
    void (^block)() = ^() {
        [arr addObject:@"1"];
        NSLog(@"%p",&arr);

    };
    block();
    NSLog(@"%p",&arr);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)SBBtn2:(UIButton *)sender {
    NSLog(@"sb button2 tap");
    [self Test];

}

- (void)Test {
    NSLog(@"test");
}
- (void)Test:(UIButton *)sender {
    NSLog(@"button tap");
}
- (IBAction)SBBtn:(UIButton *)sender {
    NSLog(@"sb button tap");

}

- (void)test2 {

}

- (void)test3 {

}
@end
