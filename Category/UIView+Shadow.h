//
//  UIView+Shadow.h
//  innmall
//
//  Created by LeungL on 16/4/25.
//  Copyright © 2016年 innapp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Shadow)
- (void)addDefaultBlackShadow;
- (void)addDefaultBlackShadowWithCornerRadius:(CGFloat)cornerRadius;
- (void)addShadowWithBgColor:(UIColor *)color;
- (void)addDefaultBlackShadowAutoChangeSizeWithView:(BOOL)isAutoChange;
@end
