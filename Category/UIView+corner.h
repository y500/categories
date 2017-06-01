//
//  UIView+corner.h
//  ModelLive
//
//  Created by wentian on 16/12/7.
//  Copyright © 2016年 wentian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (corner)

- (void)addRoundCorners:(UIRectCorner)corners radius:(CGFloat)radius;

- (void)addAllRoundCornersWithRadius:(CGFloat)radius;
@end
