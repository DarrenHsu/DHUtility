//
//  NSNumber+Type.h
//  SKLBusinessOpportunities
//
//  Created by skcu1805 on 2014/10/14.
//  Copyright (c) 2014年 D.H. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSNumber (Type)

- (BOOL) conformsToType:(const char *) type;
- (NSNumber *) compareNumberB:(NSNumber *) nb order:(NSComparisonResult) result;
- (NSString *) groupStringValue;
- (NSString *) groupStringValueWithDigits:(NSUInteger) dig;

@end