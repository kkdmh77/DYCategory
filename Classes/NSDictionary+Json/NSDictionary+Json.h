//
//  NSDictionary+Json.h
//  LLInstalmentSDK
//
//  Created by zdy on 2017/2/6.
//  Copyright © 2017年 lianlian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (Json)

- (BOOL)boolValueForKey:(NSString *)key;
- (BOOL)boolValueForKey:(NSString *)key defaultValue:(BOOL)defaultValue;
- (int)intValueForKey:(NSString *)key;
- (int)intValueForKey:(NSString *)key defaultValue:(int)defaultValue;
- (time_t)timeValueForKey:(NSString *)key;
- (time_t)timeValueForKey:(NSString *)key defaultValue:(time_t)defaultValue;
- (long long)longLongValueForKey:(NSString *)key;
- (long long)longLongValueForKey:(NSString *)key defaultValue:(long long)defaultValue;
- (NSString *)stringValueForKey:(NSString *)key;
- (NSString *)stringValueForKey:(NSString *)key defaultValue:(NSString *)defaultValue;
- (NSDictionary *)dictionaryValueForKey:(NSString *)key;
- (NSArray *)arrayValueForKey:(NSString *)key;
- (double)doubleValueForKey:(NSString *)key;
- (double)doubleValueForKey:(NSString *)key defaultValue:(double)defaultValue;

@end
