//
//  UIView+Views.m
//  innmall
//
//  Created by LeungL on 15/12/24.
//  Copyright © 2015年 innapp. All rights reserved.
//

#import "UIView+Views.h"

@implementation UIView (Views)

+ (UIView *)lineWithWidth:(CGFloat)width
{
    UIView * line = [[UIView alloc] initWithFrame:CGRectMake(0, 0, width, 0.5)];
    line.backgroundColor = [UIColor lightGrayColor];
    return line;
}

+ (UIView *)lineWithWidth:(CGFloat)width Origin:(CGPoint)origin
{
    UIView * line = [[UIView alloc] initWithFrame:CGRectMake(origin.x, origin.y, width, 0.5)];
    line.backgroundColor = [UIColor lightGrayColor];
    return line;
}

+ (UIView *)lineWithHeight:(CGFloat)height
{
    UIView * line = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0.5, height)];
    line.backgroundColor = [UIColor lightGrayColor];
    return line;
}

+ (UIView *)lineWithWidth:(CGFloat)width Color:(UIColor *)color
{
    UIView * line = [[UIView alloc] initWithFrame:CGRectMake(0, 0, width, 0.5)];
    line.backgroundColor = color;
    return line;
}

@end
