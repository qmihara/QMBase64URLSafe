//
//  NSString+QMBase64URLSafeTests.m
//  QMBase64URLSafe
//
//  Created by Kyusaku Mihara on 7/19/14.
//  Copyright (c) 2014 epohsoft. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSString+QMBase64URLSafe.h"

@interface NSString_QMBase64URLSafeTests : XCTestCase
@end

@implementation NSString_QMBase64URLSafeTests

- (void)testEncodeAndDecode {
    NSString *string = @"{\"key\":\"value\"}";
    
    NSString *encodedString = [string qm_base64URLSafeEncodedString];
    XCTAssertNotNil(encodedString);
    
    NSString *decodedString = [encodedString qm_base64URLSafeDecodedString];
    XCTAssertEqualObjects(string, decodedString);
}

- (void)testEncodeAndDecodeWithEncodingOptions {
    NSString *string = @"{\"key\":\"value\"}";
    
    NSString *encodedString = [string qm_base64URLSafeEncodedStringWithOptions:NSDataBase64Encoding64CharacterLineLength];
    XCTAssertNotNil(encodedString);
    
    NSString *decodedString = [encodedString qm_base64URLSafeDecodedString];
    XCTAssertEqualObjects(string, decodedString);
}

- (void)testEncodeAndDecodeWithEncoding {
    NSString *string = @"{\"key\":\"value\"}";
    
    NSString *encodedString = [string qm_base64URLSafeEncodedStringWithEncoding:NSASCIIStringEncoding];
    XCTAssertNotNil(encodedString);
    
    NSString *decodedString = [encodedString qm_base64URLSafeDecodedString];
    XCTAssertEqualObjects(string, decodedString);
}

- (void)testEncodeAndDecodeWithEncodingAndOptions {
    NSString *string = @"{\"key\":\"value\"}";
    
    NSString *encodedString = [string qm_base64URLSafeEncodedStringWithEncoding:NSASCIIStringEncoding options:NSDataBase64Encoding64CharacterLineLength];
    XCTAssertNotNil(encodedString);
    
    NSString *decodedString = [encodedString qm_base64URLSafeDecodedString];
    XCTAssertEqualObjects(string, decodedString);
}

- (void)testEncodeByEmptyString {
    NSString *string = @"";
    
    NSString *encodedString = [string qm_base64URLSafeEncodedString];
    XCTAssertNotNil(encodedString);
}

@end
