//
//  NSData+QMBase64URLSafe.h
//  Base64URLSafe
//
//  Created by Kyusaku Mihara on 7/17/2014.
//  Copyright (c) 2014 epohsoft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (QMBase64URLSafe)

- (instancetype)qm_initWithBase64URLSafeEncodedString:(NSString *)base64String options:(NSDataBase64DecodingOptions)options;
- (NSString *)qm_base64URLSafeEncodedStringWithOptions:(NSDataBase64EncodingOptions)options;

@end