//
//  UIButton+UIButtonExt.h
//  innmall
//
//  Created by zengfx on 15/6/25.
//  Copyright (c) 2015年 yanqizhou. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    UIButtonImageTitleArrangementLeftImage,
    UIButtonImageTitleArrangementRightImage,
    UIButtonImageTitleArrangementTopImage
} UIButtonImageTitleArrangement;

@interface UIButton (UIButtonExt)
@property (nonatomic, assign) CGFloat maxWidth;

- (void)centerImageAndTitle:(float)space;
- (void)centerImageAndTitle;

/**
 *  把默认的 image 和 title 按照规则排列
 *
 *  @param type      左图右字/左字右图/上图下字
 *  @param spacing   图文间隔
 *  @param isNeedFit 是否需要适应图文宽度
 */
- (void)arrangeImageAndTitleWithType:(UIButtonImageTitleArrangement)type AndSpacing:(CGFloat)spacing NeedFit:(BOOL)isNeedFit;
@end
