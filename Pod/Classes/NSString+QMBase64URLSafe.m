//
//  NSString+QMBase64URLSafe.m
//  Base64URLSafe
//
//  Created by Kyusaku Mihara on 7/17/2014.
//  Copyright (c) 2014 epohsoft. All rights reserved.
//

#import "NSString+QMBase64URLSafe.h"
#import "NSData+QMBase64URLSafe.h"

@implementation NSString (QMBase64URLSafe)

- (NSString *)qm_base64URLSafeDecodedString {
    return [self qm_base64URLSafeDecodedStringWithEncoding:NSUTF8StringEncoding options:0];
}

- (NSString *)qm_base64URLSafeDecodedStringWithEncoding:(NSStringEncoding)encoding {
    return [self qm_base64URLSafeDecodedStringWithEncoding:encoding options:0];
}

- (NSString *)qm_base64URLSafeDecodedStringWithOptions:(NSDataBase64DecodingOptions)options {
    return [self qm_base64URLSafeDecodedStringWithEncoding:NSUTF8StringEncoding options:options];
}

- (NSString *)qm_base64URLSafeDecodedStringWithEncoding:(NSStringEncoding)encoding options:(NSDataBase64DecodingOptions)options {
    NSData *data = [[NSData alloc] qm_initWithBase64URLSafeEncodedString:self options:options];
    return [[NSString alloc] initWithData:data encoding:encoding];
}

- (NSString *)qm_base64URLSafeEncodedString {
    return [self qm_base64URLSafeEncodedStringWithEncoding:NSUTF8StringEncoding options:0];
}

- (NSString *)qm_base64URLSafeEncodedStringWithEncoding:(NSStringEncoding)encoding {
    return [self qm_base64URLSafeEncodedStringWithEncoding:encoding options:0];
}

- (NSString *)qm_base64URLSafeEncodedStringWithOptions:(NSDataBase64EncodingOptions)options {
    return [self qm_base64URLSafeEncodedStringWithEncoding:NSUTF8StringEncoding options:options];
}

- (NSString *)qm_base64URLSafeEncodedStringWithEncoding:(NSStringEncoding)encoding options:(NSDataBase64EncodingOptions)options {
    NSData *data = [self dataUsingEncoding:encoding];
    return [data qm_base64URLSafeEncodedStringWithOptions:options];
}

@end
