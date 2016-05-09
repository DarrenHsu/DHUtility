//
//  MathFunction.h
//  SKLBusinessOpportunities
//
//  Created by Dareen Hsu on 2014/10/28.
//  Copyright (c) 2014年 D.H. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    SKLRoundNone,
    SKLRoundPlain,      //四捨五入
    SKLRoundUp,         //無條件進位
    SKLRoundDown,       //無條件捨去
    SKLRoundBankers     //取Bank值
} SKLRoundingMode;

@interface MathFunction : NSObject

+ (NSDecimalNumber *) round:(NSDecimalNumber *) number type:(SKLRoundingMode) type decDig:(int) decDig;

@end