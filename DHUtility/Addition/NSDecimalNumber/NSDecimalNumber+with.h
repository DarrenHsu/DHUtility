//
//  NSDecimalNumber+with.h
//  SKLBusinessOpportunities
//
//  Created by skcu1805 on 2014/10/29.
//  Copyright (c) 2014年 D.H. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDecimalNumber (with)

+ (NSDecimalNumber *) decimalNumberWithInteger:(NSInteger) value;
+ (NSDecimalNumber *) decimalNumberWithInt:(int) value;
+ (NSDecimalNumber *) decimalNumberWithDouble:(double) value;

- (NSDecimalNumber *) compareNumberB:(NSDecimalNumber *) nb order:(NSComparisonResult) result;

- (BOOL) isEqualToInteger:(NSInteger) value;
- (BOOL) isEqualToInt:(int) value;
- (BOOL) isEqualToDouble:(int) value;

@end