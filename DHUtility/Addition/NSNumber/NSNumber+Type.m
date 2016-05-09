//
//  NSNumber+Type.m
//  SKLBusinessOpportunities
//
//  Created by skcu1805 on 2014/10/14.
//  Copyright (c) 2014年 D.H. All rights reserved.
//

#import "NSNumber+Type.h"

@implementation NSNumber (Type)

- (BOOL) conformsToType:(const char *) type {
    return strcmp([self objCType], type) == 0;
}

- (NSNumber *) compareNumberB:(NSNumber *) nb order:(NSComparisonResult) result {
    if ([self compare:nb] == result) {
        return self;
    }else {
        return nb;
    }
}

- (NSString *) groupStringValue {
    NSNumberFormatter *numberFormat = [NSNumberFormatter new];
    numberFormat.usesGroupingSeparator = YES;
    numberFormat.groupingSeparator = @",";
    numberFormat.groupingSize = 3;
    numberFormat.maximumFractionDigits = 100;
    numberFormat.minimumIntegerDigits = 1;
    return [numberFormat stringFromNumber:self];
}

- (NSString *) groupStringValueWithDigits:(NSUInteger) dig {
    NSNumberFormatter *numberFormat = [NSNumberFormatter new];
    numberFormat.usesGroupingSeparator = YES;
    numberFormat.groupingSeparator = @",";
    numberFormat.groupingSize = 3;
    numberFormat.minimumFractionDigits = dig;
    numberFormat.minimumIntegerDigits = 1;
    numberFormat.roundingMode = NSNumberFormatterRoundHalfUp;
    return [numberFormat stringFromNumber:self];
}

@end