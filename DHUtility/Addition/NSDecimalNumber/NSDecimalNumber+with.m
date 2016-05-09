//
//  NSDecimalNumber+with.m
//  SKLBusinessOpportunities
//
//  Created by skcu1805 on 2014/10/29.
//  Copyright (c) 2014年 D.H. All rights reserved.
//

#import "NSDecimalNumber+with.h"

@implementation NSDecimalNumber (with)

+ (NSDecimalNumber *) decimalNumberWithInteger:(NSInteger) value {
    NSNumber *nvalue = [NSNumber numberWithInteger:value];
    return [NSDecimalNumber decimalNumberWithDecimal:nvalue.decimalValue];
}

+ (NSDecimalNumber *) decimalNumberWithInt:(int) value {
    NSNumber *nvalue = [NSNumber numberWithInt:value];
    return [NSDecimalNumber decimalNumberWithDecimal:nvalue.decimalValue];
}

+ (NSDecimalNumber *) decimalNumberWithDouble:(double) value {
    NSNumber *nvalue = [NSNumber numberWithDouble:value];
    return [NSDecimalNumber decimalNumberWithDecimal:nvalue.decimalValue];
}

- (NSDecimalNumber *) compareNumberB:(NSDecimalNumber *) nb order:(NSComparisonResult) result {
    if ([self compare:nb] == result) {
        return self;
    }else {
        return nb;
    }
}

- (BOOL) isEqualToInteger:(NSInteger) value {
    NSDecimalNumber *valueNumber = [NSDecimalNumber decimalNumberWithInteger:value];
    return [self compare:valueNumber] == NSOrderedSame;
}

- (BOOL) isEqualToInt:(int) value {
    NSDecimalNumber *valueNumber = [NSDecimalNumber decimalNumberWithInt:value];
    return [self compare:valueNumber] == NSOrderedSame;
}

- (BOOL) isEqualToDouble:(int) value {
    NSDecimalNumber *valueNumber = [NSDecimalNumber decimalNumberWithDouble:value];
    return [self compare:valueNumber] == NSOrderedSame;
}

@end