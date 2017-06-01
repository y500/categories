//
//  UIView+corner.m
//  ModelLive
//
//  Created by wentian on 16/12/7.
//  Copyright © 2016年 wentian. All rights reserved.
//

#import "UIView+corner.h"

@implementation UIView (corner)

- (void)addRoundCorners:(UIRectCorner)corners radius:(CGFloat)radius {
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:corners cornerRadii:CGSizeMake(radius, radius)];
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = self.bounds;
    maskLayer.path = maskPath.CGPath;
    self.layer.mask = maskLayer;
}

- (void)addAllRoundCornersWithRadius:(CGFloat)radius {
    [self addRoundCorners:UIRectCornerAllCorners radius:radius];
}

@end
