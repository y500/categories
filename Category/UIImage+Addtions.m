//
//  UIImage+Addtions.m
//  innmall
//
//  Created by Casum on 15/10/13.
//  Copyright © 2015年 innapp.cn. All rights reserved.
//

#import "UIImage+Addtions.h"

@implementation UIImage(Addtions)

+(UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size{
    CGRect rect = CGRectMake(0, 0, size.width, size.height);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}


@end
