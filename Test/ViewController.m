//
//  ViewController.m
//  Test
//
//  Created by Dareen Hsu on 5/9/16.
//  Copyright © 2016 Dareen Hsu. All rights reserved.
//


#import "ViewController.h"
#import "NSString+Utility.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    NSString *str = @"hello world!";
    NSLog(@"%@",[str reverse]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
