//
//  NSString+QMBase64URLSafe.h
//  Base64URLSafe
//
//  Created by Kyusaku Mihara on 7/17/2014.
//  Copyright (c) 2014 epohsoft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (QMBase64URLSafe)

- (NSString *)qm_base64URLSafeDecodedString;
- (NSString *)qm_base64URLSafeDecodedStringWithEncoding:(NSStringEncoding)encoding;
- (NSString *)qm_base64URLSafeDecodedStringWithOptions:(NSDataBase64DecodingOptions)options;
- (NSString *)qm_base64URLSafeDecodedStringWithEncoding:(NSStringEncoding)encoding options:(NSDataBase64DecodingOptions)options;

- (NSString *)qm_base64URLSafeEncodedString;
- (NSString *)qm_base64URLSafeEncodedStringWithEncoding:(NSStringEncoding)encoding;
- (NSString *)qm_base64URLSafeEncodedStringWithOptions:(NSDataBase64EncodingOptions)options;
- (NSString *)qm_base64URLSafeEncodedStringWithEncoding:(NSStringEncoding)encoding options:(NSDataBase64EncodingOptions)options;

@end
