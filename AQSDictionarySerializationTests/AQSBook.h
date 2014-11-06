//
//  AQSBook.h
//  AQSDictionarySerialization
//
//  Created by kaiinui on 2014/11/06.
//  Copyright (c) 2014年 Aquamarine. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "AQSDictionarySerialization.h"

@interface AQSBook : NSObject <AQSDictionarySerialization>

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *authorName;

@end
