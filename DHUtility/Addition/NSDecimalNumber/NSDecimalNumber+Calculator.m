//
//  NSDecimalNumber+Calculator.m
//  SKLLibrary
//
//  Created by Dareen Hsu on 6/24/15.
//  Copyright (c) 2015 D.H. All rights reserved.
//

#import "NSDecimalNumber+Calculator.h"
#import "NSDecimalNumber+with.h"
#import "MathFunction.h"

@implementation NSDecimalNumber (Calculator)

NSDecimalNumber * DH_add(NSDecimalNumber *aNum, NSDecimalNumber *bNum) {
    return [aNum decimalNumberByAdding:bNum];
}

NSDecimalNumber * DH_subtract(NSDecimalNumber *aNum, NSDecimalNumber *bNum) {
    return [aNum decimalNumberBySubtracting:bNum];
}

NSDecimalNumber * DH_multip(NSDecimalNumber *aNum, NSDecimalNumber *bNum) {
    return [aNum decimalNumberByMultiplyingBy:bNum];
}

NSDecimalNumber * DH_divide(NSDecimalNumber *aNum, NSDecimalNumber *bNum) {
    return [aNum decimalNumberByDividingBy:bNum];
}

BOOL DH_ascending(NSDecimalNumber *a,NSDecimalNumber *b) {
    return [a compare:b] == NSOrderedAscending;
}

BOOL DH_ascendingOrSame(NSDecimalNumber *a,NSDecimalNumber *b) {
    return [a compare:b] == NSOrderedAscending || [a compare:b] == NSOrderedSame;
}

BOOL DH_same(NSDecimalNumber *a,NSDecimalNumber *b) {
    return [a compare:b] == NSOrderedSame;
}

BOOL DH_descending(NSDecimalNumber *a,NSDecimalNumber *b) {
    return [a compare:b] == NSOrderedDescending;
}

BOOL DH_descendingOrSame(NSDecimalNumber *a,NSDecimalNumber *b) {
    return [a compare:b] == NSOrderedDescending || [a compare:b] == NSOrderedSame;
}

NSDecimalNumber * DH_max(NSDecimalNumber *a, NSDecimalNumber *b) {
    return [a compareNumberB:b order:NSOrderedDescending];
}

NSDecimalNumber * DH_min(NSDecimalNumber *a, NSDecimalNumber *b) {
    return [a compareNumberB:b order:NSOrderedAscending];
}

NSDecimalNumber * DH_roundPlan(NSDecimalNumber *a, int digt) {
    return [MathFunction round:a type:SKLRoundPlain decDig:digt];
}

NSDecimalNumber * DH_roundDown(NSDecimalNumber *a, int digt) {
    return [MathFunction round:a type:SKLRoundDown decDig:digt];
}

NSDecimalNumber * DH_roundUp(NSDecimalNumber *a, int digt) {
    return [MathFunction round:a type:SKLRoundUp decDig:digt];
}

NSDecimalNumber * DH_roundBankers(NSDecimalNumber *a, int digt) {
    return [MathFunction round:a type:SKLRoundBankers decDig:digt];
}


@end