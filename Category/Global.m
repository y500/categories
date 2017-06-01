//
//  Global.m
//  innmall
//
//  Created by LeungL on 15/12/30.
//  Copyright (c) 2015年 innapp.cn. All rights reserved.
//

#import "Global.h"

float g_ratioF;
float g_ratioW;
float g_ratioH;
float g_screenWidth;
float g_screenHeight;

@implementation Global

+ (void)initGlobalVariables {
    srand ( (unsigned) time (NULL) );
    g_screenHeight = [UIScreen mainScreen].bounds.size.height;
    g_screenWidth  = [UIScreen mainScreen].bounds.size.width;
    
    g_ratioW = ((CGFloat)g_screenWidth  / (CGFloat)750.0);
    g_ratioH = ((CGFloat)g_screenHeight / (CGFloat)1334.0);
    
    g_ratioF = MIN(g_ratioW, g_ratioH);
}

@end

CGFloat ratioWidth(CGFloat width) {
    return (CGFloat)(g_ratioF * (CGFloat)width);
}

CGFloat ratioHeight(CGFloat height) {
    return (CGFloat)(g_ratioF * (CGFloat)height);
}
