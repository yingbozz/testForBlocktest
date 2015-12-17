//
//  BlockViewController.m
//  TestForBlock
//
//  Created by 薛迎波 on 15/12/17.
//  Copyright © 2015年 XueYingbo. All rights reserved.
//

#import "BlockViewController.h"



@interface BlockViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation BlockViewController
- (IBAction)button:(id)sender {
    if (_BlockPass) {
        _BlockPass(_textField.text);
    }
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(0, 70, 320, 40);
    [self.view addSubview:button];
    [button setTitle:@"return 1 page" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
}
- (void)buttonAction:(UIButton *)button
{
    //	2.在合适的地方执行block代码
    self.block([UIColor redColor]);
    self.string(@"asdasdasd");
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)valueBlock:(BL)block
{
    self.block = block;
}
- (void)valueStringBlock:(stringBL)block
{
    self.string = block;
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
