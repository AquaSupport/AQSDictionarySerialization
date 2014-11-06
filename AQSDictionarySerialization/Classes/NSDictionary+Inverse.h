//
//  NSDictionary+Inverse.h
//  AQSDictionarySerialization
//
//  Created by kaiinui on 2014/11/06.
//  Copyright (c) 2014年 Aquamarine. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (Inverse)

/**
 *  Return a new dictionary that is inversed with key and value.
 *  For example, for following dictionary,
 *
 *  @{
 *      @"name": @"James Bill",
 *      @"age": @"23"
 *  }
 *
 *  this method returns a dictionary as follows.
 *
 *  @{
 *      @"James Bill": @"name",
 *      @"23": @"age"
 *  }
 *
 *  Please note it only allows `NSString` for both key and value.
 *
 *  @return Key-Value inversed dictionary
 */
- (NSDictionary /* <NSString, NSString> */ *)keyValueInversedDictionary;

@end
