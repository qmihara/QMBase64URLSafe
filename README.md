# QMBase64URLSafe

[![CI Status](http://img.shields.io/travis/qmihara/QMBase64URLSafe.svg?style=flat)](https://travis-ci.org/qmihara/QMBase64URLSafe)
[![Version](https://img.shields.io/cocoapods/v/QMBase64URLSafe.svg?style=flat)](http://cocoadocs.org/docsets/QMBase64URLSafe)
[![License](https://img.shields.io/cocoapods/l/QMBase64URLSafe.svg?style=flat)](http://cocoadocs.org/docsets/QMBase64URLSafe)
[![Platform](https://img.shields.io/cocoapods/p/QMBase64URLSafe.svg?style=flat)](http://cocoadocs.org/docsets/QMBase64URLSafe)

Base 64 Encoding with URL and Filename Safe Alphabet Additions for iOS.

see [RFC4648](http://tools.ietf.org/html/rfc4648#section-5).

## Usage

### NSData Extensions

    NSData *data = ...;
    NSString *encodedString = [data qm_base64URLSafeEncodedStringWithOptions:0];
    
    NSData *decodedData = [[NSData alloc] qm_initWithBase64URLSafeEncodedString:encodedString options:0];

### NSString Extensions

    NSString *string = @"...";
    NSString *encodedString = [string qm_base64URLSafeEncodedString];
    
    NSString *decodedString = [encodedString qm_base64URLSafeDecodedString];

## Requirements

iOS 7.0 or higher, ARC only

## Installation

QMBase64URLSafe is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

    pod "QMBase64URLSafe"

## Author

[qmihara](https://github.com/qmihara) ([@qmihara](https://twitter.com/qmihara))

## License

QMBase64URLSafe is available under the MIT license. See the [LICENSE](https://github.com/qmihara/QMBase64URLSafe/master/LICENSE) file for more info.
