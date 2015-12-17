//
//  OtherViewController.h
//  TestForBlock
//
//  Created by 薛迎波 on 15/12/17.
//  Copyright © 2015年 XueYingbo. All rights reserved.
//

#import <UIKit/UIKit.h>

@class OtherViewController;
@protocol OtherViewControllerDelegate <NSObject>

-(void)popBackViewController:(OtherViewController *)controller finishWithMessage:(NSString *)str;

@end

@interface OtherViewController : UIViewController

@property (nonatomic,assign) id<OtherViewControllerDelegate> delegate;
@end
