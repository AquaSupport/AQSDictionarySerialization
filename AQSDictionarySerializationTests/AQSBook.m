//
//  AQSBook.m
//  AQSDictionarySerialization
//
//  Created by kaiinui on 2014/11/06.
//  Copyright (c) 2014年 Aquamarine. All rights reserved.
//

#import "AQSBook.h"

@implementation AQSBook

- (NSDictionary *)aqs_keyPathsByPropertyKey {
    return @{
             @"title": @"Title",
             @"authorName": @"AuthorName"
             };
}

@end
