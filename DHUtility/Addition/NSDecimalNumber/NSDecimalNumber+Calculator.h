//
//  NSDecimalNumber+Calculator.h
//  SKLLibrary
//
//  Created by Dareen Hsu on 6/24/15.
//  Copyright (c) 2015 D.H. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDecimalNumber (Calculator)

/* a + b */
extern NSDecimalNumber * DH_add(NSDecimalNumber *a, NSDecimalNumber *b);

/* a - b */
extern NSDecimalNumber * DH_subtract(NSDecimalNumber *a, NSDecimalNumber *b);

/* a * b */
extern NSDecimalNumber * DH_multip(NSDecimalNumber *a, NSDecimalNumber *b);

/* a / b */
extern NSDecimalNumber * DH_divide(NSDecimalNumber *a, NSDecimalNumber *b);

/* a < b */
extern BOOL DH_ascending(NSDecimalNumber *a,NSDecimalNumber *b);
/* a <= b */
extern BOOL DH_ascendingOrSame(NSDecimalNumber *a,NSDecimalNumber *b);

/* a == b */
extern BOOL DH_same(NSDecimalNumber *a,NSDecimalNumber *b);;

/* a > b */
extern BOOL DH_descending(NSDecimalNumber *a,NSDecimalNumber *b);
/* a >= b */
extern BOOL DH_descendingOrSame(NSDecimalNumber *a,NSDecimalNumber *b);

/* MAX(a, b) */
extern NSDecimalNumber * DH_max(NSDecimalNumber *a, NSDecimalNumber *b);
/* MIN(a, b) */
extern NSDecimalNumber * DH_min(NSDecimalNumber *a, NSDecimalNumber *b);

/* 取四捨五入，到小數點第幾位 */
extern NSDecimalNumber * DH_roundPlan(NSDecimalNumber *a, int digt);
/* 無條件進位，到小數點第幾位 */
extern NSDecimalNumber * DH_roundDown(NSDecimalNumber *a, int digt);
/* 無條件捨去，到小數點第幾位 */
extern NSDecimalNumber * DH_roundUp(NSDecimalNumber *a, int digt);
/* 取 Bankers，到小數點第幾位 */
extern NSDecimalNumber * DH_roundBankers(NSDecimalNumber *a, int digt);

@end