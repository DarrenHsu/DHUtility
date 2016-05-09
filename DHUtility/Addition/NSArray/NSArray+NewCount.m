//
//  NSArray+NewCount.m
//  SKLBusinessOpportunities
//
//  Created by skcu1805 on 2014/10/30.
//  Copyright (c) 2014年 D.H. All rights reserved.
//

#import "NSArray+NewCount.h"

@implementation NSArray (NewCount)

+ (id) newWithCount:(NSUInteger) count {
    NSMutableArray *array = [NSMutableArray new];
    for (int i = 0 ; i < count ; i++) {
        [array addObject:[NSNull null]];
    }
    return array;
}

+ (id) newDecimalNumberValueWithCount:(NSUInteger) count {
    NSMutableArray *array = [NSMutableArray new];
    for (int i = 0 ; i < count ; i++) {
        [array addObject:[NSDecimalNumber zero]];
    }
    return array;
}


@end
