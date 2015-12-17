//
//  OtherViewController.m
//  TestForBlock
//
//  Created by 薛迎波 on 15/12/17.
//  Copyright © 2015年 XueYingbo. All rights reserved.
//

#import "OtherViewController.h"

@interface OtherViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textfield;

@end

@implementation OtherViewController
- (IBAction)pre:(id)sender {
    //代理的判断：是否为空还有事先方法的控制器是否实现了方法
    if (self.delegate && [self.delegate respondsToSelector:@selector(popBackViewController:finishWithMessage:)]) {
        [self.delegate popBackViewController:self finishWithMessage:_textfield.text];
        [self dismissViewControllerAnimated:YES completion:nil];
    }
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
