//
//  ViewController.m
//  PodsBranchTest
//
//  Created by 储强盛 on 2019/8/8.
//  Copyright © 2019 Sensors Data Inc. All rights reserved.
//

#import "ViewController.h"
#import <YYSDK/YYSDK.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    BaseMode *model = [[BaseMode alloc]init];
    [model finishLoad];

    
}


@end
