//
//  UIWindow+Additions.h
//  innmall
//
//  Created by mac on 3/27/15.
//  Copyright (c) 2015 yanqizhou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIWindow (Additions)

- (UIImage *)snapshot;

- (UIViewController *)viewControllerForStatusBarStyle;

- (UIViewController *)viewControllerForStatusBarHidden;

@end
