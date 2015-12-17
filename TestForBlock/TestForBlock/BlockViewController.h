//
//  BlockViewController.h
//  TestForBlock
//
//  Created by 薛迎波 on 15/12/17.
//  Copyright © 2015年 XueYingbo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BlockViewController : UIViewController

@property (nonatomic, copy) void (^ButtonBlock)(NSString *str);

@end
