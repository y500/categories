//
//  Global.h
//  innmall
//
//  Created by LeungL on 15/12/30.
//  Copyright (c) 2015年 innapp.cn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

extern float g_ratioF;
extern float g_ratioW;
extern float g_ratioH;
extern float g_screenWidth;
extern float g_screenHeight;

#define RatioW(__w__) (CGFloat)(g_ratioF * (CGFloat)(__w__))
#define RatioH(__h__) (CGFloat)(g_ratioF * (CGFloat)(__h__))

@interface Global : NSObject
+ (void)initGlobalVariables;
@end

CGFloat ratioWidth(CGFloat width);
CGFloat ratioHeight(CGFloat height);
