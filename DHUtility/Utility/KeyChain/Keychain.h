//
//  Keychain.h
//  SKLifePlan
//
//  Created by Dareen Hsu on 5/26/15.
//  Copyright (c) 2015 D.H. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Keychain : NSObject

- (id) initWithService:(NSString *) service_ withGroup:(NSString*)group_;

- (BOOL) insert:(NSString *)key value:(NSData *)data;
- (BOOL) update:(NSString *)key value:(NSData *)data;
- (BOOL) remove: (NSString *)key;
- (NSData*) find:(NSString *)key;

@end