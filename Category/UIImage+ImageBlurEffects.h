//
//  UIImage+ImageBlurEffects.h
//  innmall
//
//  Created by mac on 3/27/15.
//  Copyright (c) 2015 yanqizhou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (ImageBlurEffects)

- (UIImage *)applyBlurWithRadius:(CGFloat)blurRadius tintColor:(UIColor *)tintColor saturationDeltaFactor:(CGFloat)saturationDeltaFactor maskImage:(UIImage *)maskImage;

@end
