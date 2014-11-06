//
//  AQSDictionarySerialization.h
//  AQSDictionarySerialization
//
//  Created by kaiinui on 2014/11/06.
//  Copyright (c) 2014年 Aquamarine. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol AQSDictionarySerialization <NSObject>

/**
 *  Shuold return a dictionary that contains dictionary key paths for property keys.
 *
 *  For example, it should return a dictionary like as follows.
 *
 *      return @{
 *          @"title": @"title",
 *          @"authorName": @"author_name",
 *          @"isPublished": @"is_published"
 *      };
 *
 *  @return A dictionary for serialization
 */
- (NSDictionary *)aqs_keyPathsByPropertyKey;

@end