//
//  UIView+Shadow.m
//  innmall
//
//  Created by LeungL on 16/4/25.
//  Copyright © 2016年 innapp. All rights reserved.
//

#import "UIView+Shadow.h"


@implementation UIView (Shadow)

- (void)addDefaultBlackShadow
{
    if ([self isKindOfClass:[UITableView class]]) {
        self.layer.masksToBounds = NO;
    }
    self.layer.backgroundColor = [UIColor whiteColor].CGColor;
    self.layer.cornerRadius    = 4.0;
    self.layer.shadowColor     = [UIColor blackColor].CGColor;
    self.layer.shadowOpacity   = 0.15;
    self.layer.shadowRadius    = 1.0;
    self.layer.shadowOffset    = CGSizeMake(0, 1);
    UIBezierPath * path = [UIBezierPath bezierPathWithRoundedRect:self.bounds cornerRadius:4.0];
    self.layer.shadowPath = path.CGPath;
}

- (void)addDefaultBlackShadowWithCornerRadius:(CGFloat)cornerRadius
{
    if ([self isKindOfClass:[UITableView class]]) {
        self.layer.masksToBounds = NO;
    }
    self.layer.backgroundColor = [UIColor whiteColor].CGColor;
    self.layer.cornerRadius    = cornerRadius;
    self.layer.shadowColor     = [UIColor blackColor].CGColor;
    self.layer.shadowOpacity   = 0.15;
    self.layer.shadowRadius    = 1.0;
    self.layer.shadowOffset    = CGSizeMake(0, 1);
    UIBezierPath * path = [UIBezierPath bezierPathWithRoundedRect:self.bounds cornerRadius:cornerRadius];
    self.layer.shadowPath = path.CGPath;
}

- (void)addShadowWithBgColor:(UIColor *)color
{
    if ([self isKindOfClass:[UITableView class]]) {
        self.layer.masksToBounds = NO;
    }
    self.layer.backgroundColor = color.CGColor;
    self.layer.cornerRadius    = 4.0;
    self.layer.shadowColor     = color.CGColor;
    self.layer.shadowOpacity   = 0.8;
    self.layer.shadowRadius    = 1.0;
    self.layer.shadowOffset    = CGSizeMake(0, 1);
    UIBezierPath * path = [UIBezierPath bezierPathWithRoundedRect:self.bounds cornerRadius:4.0];
    self.layer.shadowPath = path.CGPath;
}

- (void)addDefaultBlackShadowAutoChangeSizeWithView:(BOOL)isAutoChange
{
    if ([self isKindOfClass:[UITableView class]]) {
        self.layer.masksToBounds = NO;
    }
    self.layer.backgroundColor = [UIColor whiteColor].CGColor;
    self.layer.cornerRadius    = 4.0;
    self.layer.shadowColor     = [UIColor blackColor].CGColor;
    self.layer.shadowOpacity   = 0.15;
    self.layer.shadowRadius    = 1.0;
    self.layer.shadowOffset    = CGSizeMake(0, 1);
    if (!isAutoChange) {
        UIBezierPath * path = [UIBezierPath bezierPathWithRoundedRect:self.bounds cornerRadius:4.0];
        self.layer.shadowPath = path.CGPath;
    }
}

@end
