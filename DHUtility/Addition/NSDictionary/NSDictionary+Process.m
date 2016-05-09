//
//  NSDictionary+Process.m
//  SKLifePlan
//
//  Created by skcu1805 on 2015/2/8.
//  Copyright (c) 2015年 D.H. All rights reserved.
//

#import "NSDictionary+Process.h"

@implementation NSDictionary (Process)

- (id) PR_objectForKey:(id) key {
    id value = [self objectForKey:key];
    if ([value isKindOfClass:[NSString class]] &&
        ([value isEqualToString:@""] ||
         [value isEqualToString:@"<null>"] ||
         [value isEqualToString:@"null"])) {
        return nil;
    }else if (value == [NSNull null]){
        return nil;
    }else {
        return value;
    }
}

@end

@implementation NSMutableDictionary (Process)

- (void) PR_setObject:(id) value forKey:(id) key {
    if (value)
        [self setObject:value forKey:key];
}

@end
