//
//  ViewController.m
//  TestForBlock
//
//  Created by 薛迎波 on 15/12/16.
//  Copyright © 2015年 XueYingbo. All rights reserved.
//

#import "ViewController.h"
//1.a.函数 声明函数
void func();
//b.函数定义
void func(){
    printf("函数执行了\n");
}


//简单的函数指针的应用
//形式一：函数返回值 （*函数指针变量）（函数参数）
char (*pointFun)(int);
char fun(int a){
    return 'v';
}

//形式二：typedef 函数返回值 （*函数指针类型）（函数参数）
typedef char (*pointFunSecond)(int);

//函数指针回调的应用
void printWelcome(int len)
{
    printf("欢迎欢迎 -- %d/n", len);
}

void printGoodbye(int len)
{
    printf("送客送客 -- %d/n", len);
}

void callback(int times, void (* print)(int))
{
    int i;
    for (i = 0; i < times; ++i)
    {
        print(i);
    }
    printf("/n我不知道你是迎客还是送客!/n/n");
}


//Block的相关应用(习惯将Block的声明和定义放在一起)

// 语法 返回值类型 （*block名）（block参数） = ^（block参数）{Block主体}；
//无参数无返回值Block
void(^Block1)() = ^{
    NSLog(@"无返回值无参数的Block1");
};
//无返回值有参数的Block
void(^Block2)(int)= ^(int i){
    NSLog(@"无返回有参数的Block2：%d",i);
};
//有返回值有参数的Block
int (^Block3)(int,int)= ^(int i,int j){
    return i + j;
};
//Block回调的相关应用(Block作为参数)

//自定义类型,此block返回的类型为void,block名为Block4
typedef void(^Block4)(NSString *result1,NSString *result2);
#import "OtherViewController.h"
#import "BlockViewController.h"

@interface ViewController ()<OtherViewControllerDelegate>
@property (weak, nonatomic) IBOutlet UILabel *labelFirst;

@property (weak, nonatomic) IBOutlet UILabel *labelecond;
@property (weak, nonatomic) IBOutlet UILabel *label;


@end

@implementation ViewController


- (void)treatment:(Block4)block4{
    NSString *result1 = @"result1";
    NSString *result2 = @"result2";
    block4(result1,result2);
}

- (void)treatmentSecond:(void (^)(NSString *result3,NSString *result4))block5{
    NSString *result3 = @"result3";
    NSString *result4 = @"result4";
    block5(result3,result4);
}
typedef void(^Block6)(NSString *);
Block6  block6= ^(NSString *result6){
    NSLog(@"outPut：%@",result6);
};

- (void)viewDidLoad {
    [super viewDidLoad];
    //调用函数
    func();
    
    //简单的函数指针的应用1
    pointFun = fun;
    pointFun(5);
    NSLog(@"input:%c",pointFun(5));
    
     //简单的函数指针的应用2
    pointFunSecond p = fun;
    p(6);
    NSLog(@"input6:%c",p(6));
    
    //函数指针的回调
    callback(2, printWelcome);
    
    Block1();
    Block2(3);
    Block3(4,5);
    NSLog(@"有返回值有参数的Block：%d",Block3(4,5));
    [self treatment:^(NSString *result1, NSString *result2) {
        _labelFirst.text = result1;
        _labelecond.text = result2;
    }];
    [self treatmentSecond:^(NSString *result3, NSString *result4) {
        _labelFirst.text = result3;
        _labelecond.text = result4;
    }];
    
    block6(@"879");

}
- (IBAction)pre:(id)sender {
    
    OtherViewController *vc= [[OtherViewController alloc]initWithNibName:@"OtherViewController" bundle:nil];
    vc.delegate = self;
    [self presentViewController:vc animated:YES completion:nil];
}

-(void)popBackViewController:(OtherViewController *)controller finishWithMessage:(NSString *)str{
    _label.text = str;
}
- (IBAction)blockButton:(id)sender {
    BlockViewController *vc = [[BlockViewController alloc]initWithNibName:@"BlockViewController" bundle:nil];
    vc.ButtonBlock = ^(NSString *str){
        _label.text = str;
    };
    [self presentViewController:vc animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
