//
//  NSString+Util.h
//  maopao
//
//  Created by Cewei Shi on 11-2-14.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (Profile)
- (NSString*)genMaskIdcard;
- (NSString*)genMaskPhone;

@end

@interface NSString (Size)

- (CGSize) sizeWithFontSuper:(UIFont *)font;
- (CGSize) sizeWithFontSuper:(UIFont *)font constrainedToSize:(CGSize)size;
- (CGSize) sizeWithFontSuper:(UIFont *)font constrainedToSize:(CGSize)size lineBreakMode:(NSLineBreakMode)lineBreakMode;
@end

@interface NSString(MPUtil__)
- (bool) hasChineseCharctor;
- (bool) onlyNumberChar;
- (bool)hasSubString:(NSString *)subString;
- (NSString *)trim;
- (NSString *)trimAll;
- (NSString *)convertReturn;
@end

@interface NSString (url)

- (NSURL *)toURL;

@end


@interface NSString (URLEncode)
- (NSString *)urlEncode;
- (NSString *)URLDecode;
@end
