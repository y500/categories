//
//  UIButton+UIButtonExt.m
//  innmall
//
//  Created by zengfx on 15/6/25.
//  Copyright (c) 2015年 yanqizhou. All rights reserved.
//

#import "UIButton+UIButtonExt.h"
#import <objc/runtime.h>
#import "NSString+Util.h"
#import "UIView+Frame.h"

static void * kMaxWidthKey = (void *)@"kMaxWidthKey";

@implementation UIButton (UIButtonExt)

- (CGFloat)maxWidth
{
    NSNumber * number = objc_getAssociatedObject(self, &kMaxWidthKey);
    return number.floatValue;
}

- (void)setMaxWidth:(CGFloat)maxWidth
{
    NSNumber * number = [NSNumber numberWithDouble:maxWidth];
    objc_setAssociatedObject(self, &kMaxWidthKey, number, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (void)centerImageAndTitle:(float)spacing
{
    // get the size of the elements here for readability
    CGSize imageSize = self.imageView.frame.size;
    CGSize titleSize = self.titleLabel.frame.size;
    
    // get the height they will take up as a unit
    CGFloat totalHeight = (imageSize.height + titleSize.height + spacing);
    
    // raise the image and push it right to center it
    self.imageEdgeInsets = UIEdgeInsetsMake(- (totalHeight - imageSize.height), 0.0, 0.0, - titleSize.width);
    
    // lower the text and push it left to center it
    self.titleEdgeInsets = UIEdgeInsetsMake(0.0, - imageSize.width, - (totalHeight - titleSize.height),0.0);
}

- (void)centerImageAndTitle
{
    const int DEFAULT_SPACING = 6.0f;
    [self centerImageAndTitle:DEFAULT_SPACING];
}

- (void)arrangeImageAndTitleWithType:(UIButtonImageTitleArrangement)type AndSpacing:(CGFloat)spacing NeedFit:(BOOL)isNeedFit
{
    switch (type) {
        case UIButtonImageTitleArrangementLeftImage:
        {
            CGRect oldFrame = self.frame;
            if (isNeedFit) {
                [self fitHorizontalImageAndTitleWithSpacing:spacing];
                oldFrame = self.frame;
            }
            self.imageEdgeInsets = UIEdgeInsetsMake(0.0, -spacing, 0.0, 0.0);
            self.titleEdgeInsets = UIEdgeInsetsMake(0.0, spacing, 0.0, 0.0);
            self.frame = oldFrame;
        }
            break;
            
        case UIButtonImageTitleArrangementRightImage:
        {
            CGRect oldFrame = self.frame;
            if (isNeedFit) {
                [self fitHorizontalImageAndTitleWithSpacing:spacing];
                oldFrame = self.frame;
            }
            CGSize imageSize = self.imageView.frame.size;
            CGSize titleSize = self.titleLabel.frame.size;
            
            self.imageEdgeInsets = UIEdgeInsetsMake(0, titleSize.width + spacing, 0, -titleSize.width - spacing);
            self.titleEdgeInsets = UIEdgeInsetsMake(0, -imageSize.width, 0, imageSize.width);
            self.frame = oldFrame;
        }
            break;
        case UIButtonImageTitleArrangementTopImage:
        {
            if (isNeedFit) {
                CGFloat height = self.currentImage.size.height + self.titleLabel.height + spacing;
                CGFloat width  = MAX(self.width, MAX(self.currentImage.size.width, self.titleLabel.width));
                self.frame = CGRectMake(0, 0, width, height);
            }
            [self centerImageAndTitle:spacing];
        }
            break;
    }
}

- (void)fitHorizontalImageAndTitleWithSpacing:(CGFloat)spacing
{
    if (self.maxWidth == 0) {
        self.maxWidth = CGFLOAT_MAX;
    }
    
    UIImage * image = self.currentImage;
    NSString * title = self.titleLabel.text;
    
    CGSize imageSize = image.size;
    CGSize titleSize = [title sizeWithFontSuper:self.titleLabel.font constrainedToSize:CGSizeMake(self.maxWidth, self.height) lineBreakMode:NSLineBreakByWordWrapping];// iOS7 titleLabel的 frame 不会立刻改变, 所以直接拿 text 计算大小
    
    CGFloat height = MAX(self.height, MAX(imageSize.height, titleSize.height));
    CGFloat width  = MIN(imageSize.width + titleSize.width + spacing, self.maxWidth);
    if (imageSize.width + titleSize.width + spacing < self.maxWidth) {
        titleSize.width = self.maxWidth - imageSize.width - spacing;
    }
    self.frame = CGRectMake(0, 0, width, height);
}
@end
