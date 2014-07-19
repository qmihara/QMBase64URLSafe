//
//  NSData+QMBase64URLSafe.m
//  Base64URLSafe
//
//  Created by Kyusaku Mihara on 7/17/2014.
//  Copyright (c) 2014 epohsoft. All rights reserved.
//

#import "NSData+QMBase64URLSafe.h"

@implementation NSData (QMBase64URLSafe)

- (instancetype)qm_initWithBase64URLSafeEncodedString:(NSString *)base64URLSafeString options:(NSDataBase64DecodingOptions)options {
    NSString *base64String = base64URLSafeString;
    base64String = [base64String stringByReplacingOccurrencesOfString:@"-" withString:@"+"];
    base64String = [base64String stringByReplacingOccurrencesOfString:@"_" withString:@"/"];
    switch ([base64String length] % 4) {
        case 0:
            break;
        case 1:
            base64String = [base64String stringByAppendingString:@"=="];
            break;
        case 2:
            base64String = [base64String stringByAppendingString:@"="];
            break;
        default:
            @throw [NSException exceptionWithName:@"IllegalArguments" reason:@"Illegal encoded string." userInfo:nil];
    }
    return [self initWithBase64EncodedString:base64String options:options];
}

- (NSString *)qm_base64URLSafeEncodedStringWithOptions:(NSDataBase64EncodingOptions)options {
    NSString *encodedString = [self base64EncodedStringWithOptions:options];
    encodedString = [[encodedString componentsSeparatedByString:@"="] firstObject];
    encodedString = [encodedString stringByReplacingOccurrencesOfString:@"+" withString:@"-"];
    encodedString = [encodedString stringByReplacingOccurrencesOfString:@"/" withString:@"_"];
    return encodedString;
}

@end