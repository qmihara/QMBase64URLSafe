//
//  NSData+QMBase64URLSafeTests.m
//  Base64URLSafe
//
//  Created by Kyusaku Mihara on 7/17/2014.
//  Copyright (c) 2014 epohsoft. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSData+QMBase64URLSafe.h"

@interface NSData_QMBase64URLSafeTests : XCTestCase
@end

@implementation NSData_QMBase64URLSafeTests

- (void)testEncodeAndDecode {
    NSString *string = @"{\"key\":\"value\"}";
    NSData *data = [string dataUsingEncoding:NSUTF8StringEncoding];

    NSString *encodedString = [data qm_base64URLSafeEncodedStringWithOptions:0];
    XCTAssertNotNil(encodedString);
    
    NSData *decodedData = [[NSData alloc] qm_initWithBase64URLSafeEncodedString:encodedString options:0];
    NSString *decodedString = [[NSString alloc] initWithData:decodedData encoding:NSUTF8StringEncoding];
    
    XCTAssertEqualObjects(string, decodedString);
}

- (void)testEncodeAndDecodeWithEncodingOptions {
    NSString *string = @"{\"key\":\"value\"}";
    NSData *data = [string dataUsingEncoding:NSUTF8StringEncoding];
    
    NSString *encodedString = [data qm_base64URLSafeEncodedStringWithOptions:NSDataBase64Encoding64CharacterLineLength];
    XCTAssertNotNil(encodedString);
    
    NSData *decodedData = [[NSData alloc] qm_initWithBase64URLSafeEncodedString:encodedString options:0];
    NSString *decodedString = [[NSString alloc] initWithData:decodedData encoding:NSUTF8StringEncoding];
    
    XCTAssertEqualObjects(string, decodedString);
}

- (void)testDecodeFailed {
    NSString *invalidEncodedString = @"foobara";
    XCTAssertThrowsSpecificNamed([[NSData alloc] qm_initWithBase64URLSafeEncodedString:invalidEncodedString options:0], NSException, @"IllegalArguments");
}

- (void)testDecodeFailedByNil {
    XCTAssertThrows([[NSData alloc] qm_initWithBase64URLSafeEncodedString:nil options:0]);
}

@end
