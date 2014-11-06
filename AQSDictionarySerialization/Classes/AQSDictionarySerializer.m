//
//  AQSDictionarySerializer.m
//  AQSDictionarySerialization
//
//  Created by kaiinui on 2014/11/06.
//  Copyright (c) 2014年 Aquamarine. All rights reserved.
//

#import "AQSDictionarySerializer.h"

#import "AQSDictionarySerialization.h"
#import "NSDictionary+Inverse.h"

@implementation AQSDictionarySerializer

# pragma mark - Instantiation

+ (instancetype)serializer {
    return [[self alloc] init];
}

# pragma mark - Applying a patch represented as NSDictionary

- (id<AQSDictionarySerialization>)patchAppliedObjectForObject:(NSObject<AQSDictionarySerialization> *)object
                                               withDictionary:(NSDictionary *)dictionary {
    NSDictionary *keyPathsByPropertyKeyDictionary = [object aqs_keyPathsByPropertyKey];
    NSDictionary *propertyKeyByKeyPathDictionary = [keyPathsByPropertyKeyDictionary keyValueInversedDictionary];
    for (NSString *dictionaryKeyPath in dictionary.allKeys) {
        id value = dictionary[dictionaryKeyPath];
        NSString *propertyKey = propertyKeyByKeyPathDictionary[dictionaryKeyPath];
        [object setValue:value forKey:propertyKey];
    }
    return object;
}

@end
