//
//  MathFunction.m
//  SKLBusinessOpportunities
//
//  Created by Dareen Hsu on 2014/10/28.
//  Copyright (c) 2014年 D.H. All rights reserved.
//

#import "MathFunction.h"

@implementation MathFunction

+ (NSDecimalNumber *) round:(NSDecimalNumber *) number type:(SKLRoundingMode) type decDig:(int) decDig {
    NSDecimalNumberHandler *handler = [MathFunction getDecimalNumberHandlerWithType:type decDig:decDig];
    return [number decimalNumberByRoundingAccordingToBehavior:handler];
}

+ (NSDecimalNumberHandler *) getDecimalNumberHandlerWithType:(SKLRoundingMode) type decDig:(int) decDig {
    NSDecimalNumberHandler *handler;
    switch (type) {
        case SKLRoundPlain:
            handler = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:NSRoundPlain
                                                                             scale:decDig
                                                                  raiseOnExactness:NO
                                                                   raiseOnOverflow:NO
                                                                  raiseOnUnderflow:NO
                                                               raiseOnDivideByZero:NO];
            break;
        case SKLRoundDown:
            handler = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:NSRoundDown
                                                                             scale:decDig
                                                                  raiseOnExactness:NO
                                                                   raiseOnOverflow:NO
                                                                  raiseOnUnderflow:NO
                                                               raiseOnDivideByZero:NO];
            break;
        case SKLRoundUp:
            handler = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:NSRoundUp
                                                                             scale:decDig
                                                                  raiseOnExactness:NO
                                                                   raiseOnOverflow:NO
                                                                  raiseOnUnderflow:NO
                                                               raiseOnDivideByZero:NO];
            break;
        case SKLRoundBankers:
            handler = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:NSRoundBankers
                                                                             scale:decDig
                                                                  raiseOnExactness:NO
                                                                   raiseOnOverflow:NO
                                                                  raiseOnUnderflow:NO
                                                               raiseOnDivideByZero:NO];
            break;
        default:
            return [NSDecimalNumberHandler defaultDecimalNumberHandler];
            break;
    }
    
    return handler;
}

@end
