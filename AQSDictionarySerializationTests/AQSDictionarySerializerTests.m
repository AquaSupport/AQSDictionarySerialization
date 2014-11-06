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

- (void)testExample {
    AQSBook *book = [[AQSBook alloc] init];
    NSDictionary *patch = @{
                            @"Title": @"sometitle",
                            @"AuthorName": @"someauthorname"
                            };
    [[AQSDictionarySerializer serializer] patchAppliedObjectForObject:book withDictionary:patch];
    
    XCTAssertTrue([book.title isEqualToString:@"sometitle"]);
    XCTAssertTrue([book.authorName isEqualToString:@"someauthorname"]);
}

@end
