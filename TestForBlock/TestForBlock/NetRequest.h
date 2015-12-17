//
//  NetRequest.h
//  TestForBlock
//
//  Created by 薛迎波 on 15/12/17.
//  Copyright © 2015年 XueYingbo. All rights reserved.
//

#import <Foundation/Foundation.h>
//利用Block封装网络请求
typedef void(^BLOCK)(id result);
@interface NetRequest : NSObject

@property (nonatomic, copy) BLOCK bl;
- (void)requestNetWithUrl:(NSString *)urlStr BodyOfRequestForString:(NSString *)bodyStr block:(BLOCK)bl;
+ (void)PostWithUrl:(NSString *)urlStr BodyOfRequestForString:(NSString *)bodyStr block:(BLOCK)bl;

@end
