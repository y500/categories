//
//  NSString+MD5Addition.h
//  UIDeviceAddition
//
//  Created by Georg Kitz on 20.08.11.
//  Copyright 2011 Aurora Apps. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString(MD5Addition)

- (NSString *) stringFromMD5;

@end


@interface NSData (Encryption)
- (NSData *)MyAES256EncryptWithKey:(NSString *)key;
- (NSData *)MyAES256DecryptWithKey:(NSString *)key;
- (NSString *)hexadecimalString;
@end