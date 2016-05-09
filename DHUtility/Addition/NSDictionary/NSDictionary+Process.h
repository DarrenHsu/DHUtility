//
//  NSDictionary+Process.h
//  SKLifePlan
//
//  Created by skcu1805 on 2015/2/8.
//  Copyright (c) 2015年 D.H. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (Process)

- (id) PR_objectForKey:(id) key;

@end

@interface NSMutableDictionary (Process)

- (void) PR_setObject:(id) value forKey:(id) key;

@end
