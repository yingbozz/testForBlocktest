//
//  BlockViewController.h
//  TestForBlock
//
//  Created by 薛迎波 on 15/12/17.
//  Copyright © 2015年 XueYingbo. All rights reserved.
//

#import <UIKit/UIKit.h>

//1 。重定义一个block类型
typedef void(^BL)(UIColor *color);
typedef void(^stringBL)(NSString *string);

@interface BlockViewController : UIViewController

//Block作为属性传值(形式一)
@property (nonatomic,copy) void(^BlockPass)(NSString *str);

//形式2
@property (nonatomic, copy) BL block;
@property (nonatomic, copy) stringBL string;
- (void)valueBlock:(BL)block;
- (void)valueStringBlock:(stringBL)block;


@end
