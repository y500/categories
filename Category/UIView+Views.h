//
//  UIView+Views.h
//  innmall
//
//  Created by LeungL on 15/12/24.
//  Copyright © 2015年 innapp. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kColorForLines ([LiveConfig shared].lineColor)

@interface UIView (Views)
+ (UIView *)lineWithWidth:(CGFloat)width;
+ (UIView *)lineWithWidth:(CGFloat)width Origin:(CGPoint)origin;
+ (UIView *)lineWithHeight:(CGFloat)height;
+ (UIView *)lineWithWidth:(CGFloat)width Color:(UIColor *)color;

@end
