//
//  AQSDictionarySerializerTests.m
//  AQSDictionarySerialization
//
//  Created by kaiinui on 2014/11/06.
//  Copyright (c) 2014年 Aquamarine. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import <OCMock.h>

#import "AQSDictionarySerialization.h"
#import "AQSDictionarySerializer.h"
#import "AQSBook.h"

@interface AQSDictionarySerializerTests : XCTestCase

@end

@implementation AQSDictionarySerializerTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testItApplyPatchForObjectWithDictionary {
    AQSBook *book = [[AQSBook alloc] init];
    NSDictionary *patch = @{
                            @"Title": @"sometitle",
                            @"AuthorName": @"someauthorname"
                            };
    [[AQSDictionarySerializer serializer] patchAppliedObjectForObject:book withDictionary:patch];
    
    XCTAssertTrue([book.title isEqualToString:@"sometitle"]);
    XCTAssertTrue([book.authorName isEqualToString:@"someauthorname"]);
}

- (void)testItApplyPatchForObjectWithDictionaryEvenIfTheDictionaryContainsWrongParams {
    AQSBook *book = [[AQSBook alloc] init];
    NSDictionary *patch = @{
                            @"Title": @"sometitle",
                            @"AuthorName": @"someauthorname",
                            @"Hoge": @"hoge"
                            };
    [[AQSDictionarySerializer serializer] patchAppliedObjectForObject:book withDictionary:patch];
    
    XCTAssertTrue([book.title isEqualToString:@"sometitle"]);
    XCTAssertTrue([book.authorName isEqualToString:@"someauthorname"]);
}

- (void)testItApplyPatchForObjectWithDictionaryEvenIfSomeParamsAreMissing {
    AQSBook *book = [[AQSBook alloc] init];
    NSDictionary *patch = @{
                            @"Title": @"sometitle",
                            @"Hoge": @"hoge"
                            };
    [[AQSDictionarySerializer serializer] patchAppliedObjectForObject:book withDictionary:patch];
    
    XCTAssertTrue([book.title isEqualToString:@"sometitle"]);
    XCTAssertNil(book.authorName);
}

- (void)testItApplyPatchForObjectWithDictionaryEvenIfNSNullIsIncluded {
    AQSBook *book = [[AQSBook alloc] init];
    NSDictionary *patch = @{
                            @"Title": @"sometitle",
                            @"AuthorName": [NSNull null]
                            };
    [[AQSDictionarySerializer serializer] patchAppliedObjectForObject:book withDictionary:patch];
    
    XCTAssertTrue([book.title isEqualToString:@"sometitle"]);
    XCTAssertNil(book.authorName);
}

- (void)testItReturnsSerializedObjectInDictionary {
    AQSBook *book = [[AQSBook alloc] init];
    book.title = @"sometitle";
    book.authorName = @"someauthorname";
    
    NSDictionary *dictionary = [[AQSDictionarySerializer serializer] dictionaryWithObject:book];
    
    XCTAssertTrue([dictionary[@"Title"] isEqualToString:@"sometitle"]);
    XCTAssertTrue([dictionary[@"AuthorName"] isEqualToString:@"someauthorname"]);
}

- (void)testItReturnsSerializedObjectInDictionaryEvenIfTheObjectContainsNil {
    AQSBook *book = [[AQSBook alloc] init];
    book.title = @"sometitle";
    book.authorName = nil;
    
    NSDictionary *dictionary = [[AQSDictionarySerializer serializer] dictionaryWithObject:book];
    
    XCTAssertTrue([dictionary[@"Title"] isEqualToString:@"sometitle"]);
    XCTAssertNil(dictionary[@"AuthorName"]);
}

@end
