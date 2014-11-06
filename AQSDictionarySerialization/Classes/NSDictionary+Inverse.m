
//
//  NSDictionary+Inverse.m
//  AQSDictionarySerialization
//
//  Created by kaiinui on 2014/11/06.
//  Copyright (c) 2014年 Aquamarine. All rights reserved.
//

#import "NSDictionary+Inverse.h"

@implementation NSDictionary (Inverse)

- (NSDictionary *)keyValueInversedDictionary {
    NSMutableDictionary *inversedDictionary = [[NSMutableDictionary alloc] init];
    for (NSString *key in self.allKeys) {
        inversedDictionary[self[key]] = key;
    }
    return inversedDictionary;
}

@end
