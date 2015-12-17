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
    if (_ButtonBlock) {
        
        _ButtonBlock(_textField.text);
        
    }
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
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
