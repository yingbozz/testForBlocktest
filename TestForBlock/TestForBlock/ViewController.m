//
//  ViewController.m
//  TestForBlock
//
//  Created by 薛迎波 on 15/12/16.
//  Copyright © 2015年 XueYingbo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

//简单的函数指针的应用
//形式一：函数返回值 （*函数指针变量）（函数参数）
char (*pointFun)(int);
char fun(int a){
    return 'v';
}

//形式二：typedef 函数返回值 （*函数指针类型）（函数参数）
typedef char (*pointFunSecond)(int);


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //简单的函数指针的应用1
    pointFun = fun;
    (*pointFun)(5);
    NSLog(@"input:%c",(*pointFun)(5));
    
     //简单的函数指针的应用2
    pointFunSecond p = fun;
    (*p)(6);
    NSLog(@"input6:%c",(*p)(6));
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
