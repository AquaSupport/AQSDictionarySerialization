//
//  ADSDebug.h
//  AQSDictionarySerialization
//
//  Created by kaiinui on 2014/12/11.
//  Copyright (c) 2014年 Aquamarine. All rights reserved.
//

#ifndef AQSDictionarySerialization_ADSDebug_h
#define AQSDictionarySerialization_ADSDebug_h

#ifdef ADS_DEBUG
#define ADSLog(...) NSLog(@"AQSDictionarySerialization: %@", [NSString stringWithFormat:__VA_ARGS__]);
#else
#define ADSLog(...)
#endif

#endif
