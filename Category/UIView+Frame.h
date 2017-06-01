//
//  UIView+Frame.h
//  IOS-Categories
//
//  Created by Jakey on 14/12/15.
//  Copyright (c) 2014年 www.skyfox.org. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Assistance)
/**
 *  用作tag
 */
@property (nonatomic, strong) NSString* keyname;

/**
 *  用于传递参数
 */
@property (nonatomic, strong) NSDictionary * dataDic;

/**
 *  列表页方便使用
 */
@property (nonatomic, strong) NSIndexPath * indexPath;
@end


@interface UIView (Frame)
// shortcuts for frame properties
@property (nonatomic, assign) CGPoint origin;
@property (nonatomic, assign) CGSize size;

// shortcuts for positions
@property (nonatomic) CGFloat centerX;
@property (nonatomic) CGFloat centerY;


@property (nonatomic) CGFloat top;
@property (nonatomic) CGFloat bottom;
@property (nonatomic) CGFloat right;
@property (nonatomic) CGFloat left;

@property (nonatomic) CGFloat width;
@property (nonatomic) CGFloat height;

-(UIView*)duplicate;
@end
