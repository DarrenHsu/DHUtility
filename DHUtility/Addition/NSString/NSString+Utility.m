//
//  NSString+Utility.m
//  DHUtility
//
//  Created by Dareen Hsu on 5/11/16.
//  Copyright © 2016 Dareen Hsu. All rights reserved.
//

#import "NSString+Utility.h"

@implementation NSString (Utility)

- (NSString *) reverse {
    UniChar carray[self.length];
    for (int i = 0, j = self.length - 1 ; i <= j ; i++, j--) {
        carray[j] = [self characterAtIndex:i];
        carray[i] = [self characterAtIndex:j];
    }
    return [NSString stringWithCharacters:carray length:self.length];
}

@end
