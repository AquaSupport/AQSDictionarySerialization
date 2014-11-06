//
//  NSDictionaryInverseTests.m
//  AQSDictionarySerialization
//
//  Created by kaiinui on 2014/11/06.
//  Copyright (c) 2014年 Aquamarine. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

#import "NSDictionary+Inverse.h"

@interface NSDictionaryInverseTests : XCTestCase

@end

@implementation NSDictionaryInverseTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testItReturnsKeyValueInversedDictionary {
    NSDictionary *original = @{
                               @"foo": @"bar",
                               @"name": @"bill"
                               };
    NSDictionary *inversed = [original keyValueInversedDictionary];
    
    XCTAssertTrue(inversed.allKeys.count == 2);
    XCTAssertTrue([inversed[@"bar"] isEqualToString:@"foo"]);
    XCTAssertTrue([inversed[@"bill"] isEqualToString:@"name"]);
}
@end
