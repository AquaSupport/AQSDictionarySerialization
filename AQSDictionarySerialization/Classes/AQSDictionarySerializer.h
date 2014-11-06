//
//  AQSDictionarySerializer.h
//  AQSDictionarySerialization
//
//  Created by kaiinui on 2014/11/06.
//  Copyright (c) 2014年 Aquamarine. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol AQSDictionarySerialization;

@interface AQSDictionarySerializer : NSObject

# pragma mark - Instantiation
/** @name Instantiation */

/**
 *  Return an initialized serializer instance.
 *
 *  @return An initialized serializer instance
 */
+ (instancetype)serializer;

# pragma mark - Applying a patch represented as NSDictionary
/** @name Applying a patch represented as NSDictionary */

- (id<AQSDictionarySerialization>)patchAppliedObjectForObject:(NSObject<AQSDictionarySerialization> *)object
                                               withDictionary:(NSDictionary *)dictionary;

# pragma mark - Obtaining NSDictionary Representation from an Object
/** @name Obtaining NSDictionary Representation from an Object */

- (NSDictionary *)dictionaryWithObject:(id<AQSDictionarySerialization>)object;

@end
