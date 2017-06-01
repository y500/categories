//
//  UIImageView+TouchEvent.h
//  Innmall
//
//  Created by Casum on 15/5/14.
//
//

#import "UIImageView+TouchEvent.h"

@implementation UIImageView (TouchEvent)

- (void)addTarget:(id)target Selector:(SEL)selector {
    self.userInteractionEnabled = YES;
    UITapGestureRecognizer* tap = [[UITapGestureRecognizer alloc]initWithTarget:target action:selector];
    tap.numberOfTapsRequired = 1;
    [self addGestureRecognizer:tap];
    
}

@end
