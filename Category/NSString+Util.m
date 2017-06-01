//
//  NSString+Util.m
//  maopao
//
//  Created by Cewei Shi on 11-2-14.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "NSString+Util.h"
#import <CommonCrypto/CommonDigest.h>
#import <CommonCrypto/CommonCryptor.h>

#define kShowDow 1
#define kShadow 0

#define RGBColor(r,g,b,a)   [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a]

@implementation NSString (Profile)

- (NSString*)genMaskIdcard
{
    if (self.length == 0) {
        return @"";
    }
    NSString *origString = [self copy];
    NSString *replce = @"";
    if (origString.length > 2) {
        for (NSInteger pos = 1; pos < origString.length - 1; pos++) {
            replce = [replce stringByAppendingString:@"*"];
        }
        origString = [origString stringByReplacingCharactersInRange:NSMakeRange(1, origString.length-2) withString:replce];
    }
    return origString;
}

- (NSString*)genMaskPhone
{
    NSString * phoneString = [self copy];
    if (phoneString.length == 0) {
        return @"";
    }
    
    if (phoneString.length >= 8) {
        return [phoneString stringByReplacingCharactersInRange:NSMakeRange(3, 4) withString:@"****"];
    }
    return phoneString;
}

@end

@implementation NSString (Size)

#pragma mark - - sizeWithFont
// - - - - - - - - - - sizeWithFont / boundingRectWithSize 必须用ceil()取整否则 UILabel 的高度是不对的 - - - - - - - - - -
- (CGSize) sizeWithFontSuper:(UIFont *)font
{
    CGSize boundingSize;
    boundingSize = [self sizeWithAttributes:@{NSFontAttributeName:font}];
    return CGSizeMake(ceil(boundingSize.width + 0.5), ceil(boundingSize.height + 0.5));
}

- (CGSize) sizeWithFontSuper:(UIFont *)font constrainedToSize:(CGSize)size
{
    CGSize boundingSize;
    boundingSize = [self boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading attributes:@{NSFontAttributeName:font} context:nil].size;
    return CGSizeMake(ceil(boundingSize.width + 0.5), ceil(boundingSize.height + 0.5));
}

- (CGSize) sizeWithFontSuper:(UIFont *)font constrainedToSize:(CGSize)size lineBreakMode:(NSLineBreakMode)lineBreakMode
{
    CGSize boundingSize;
    NSMutableParagraphStyle *textStyle = [[NSMutableParagraphStyle defaultParagraphStyle] mutableCopy];
    textStyle.lineBreakMode = lineBreakMode;
    
    boundingSize = [self boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading attributes:@{NSFontAttributeName:font, NSParagraphStyleAttributeName: textStyle} context:nil].size;
    return CGSizeMake(ceil(boundingSize.width + 0.5), ceil(boundingSize.height + 0.5));
}
@end

@implementation NSString (MPUtil__)

- (bool)hasChineseCharctor {
    for(int i = 0; i < [self length];i++) {
        int a = [self characterAtIndex:i];
        if( a > 0x4e00 && a < 0x9fff) {
            return YES;
        }
    }
    return NO;
}

- (bool)onlyNumberChar {
    for(int i=0; i< [self length];i++){
        int a = [self characterAtIndex:i];
        if (!(a>='0'&&a<='9')) {
            return NO;
        }
    }
    return YES;
}

- (bool)hasSubString:(NSString *)subString {
    if ( subString ) {
        if ( [self rangeOfString:subString].location != NSNotFound ) {
            return YES;
        }
    }
    
    return NO;
}

- (NSString *)trim {
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

- (NSString *)trimAll {
    NSArray *arr = [self componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return [arr componentsJoinedByString:@""];
}

- (NSString *)convertReturn {
    return [self stringByReplacingOccurrencesOfString:@"\\n" withString:@"\n"];
}
@end

@implementation NSString (url)

- (NSURL *)toURL
{
    if (self.length > 0 && [self respondsToSelector:@selector(stringByAddingPercentEscapesUsingEncoding:)]) {
        return [NSURL URLWithString:[self stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    }
    return [NSURL URLWithString:@""];
}

@end

@implementation NSString (URLEncode)

- (NSString *)urlEncode {
    NSString * encodedString = (NSString *)CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(NULL, (CFStringRef)self, NULL, (CFStringRef)@"!*'();:@&=+$,/?%#[]", kCFStringEncodingUTF8));
    return encodedString;
}

- (NSString *)URLDecode {
    NSString *result = [(NSString *)self stringByReplacingOccurrencesOfString:@"+" withString:@" "];
    result = [result stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    return result;
}
@end

