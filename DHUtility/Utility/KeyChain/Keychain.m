
//
//  Keychain.m
//  SKLifePlan
//
//  Created by Dareen Hsu on 5/26/15.
//  Copyright (c) 2015 D.H.. All rights reserved.
//

#import "Keychain.h"
#import <Security/Security.h>

@interface Keychain ()

@property (nonatomic, strong) NSString * service;
@property (nonatomic, strong) NSString * group;

@end

@implementation Keychain

- (id) initWithService:(NSString *) service_ withGroup:(NSString*)group_ {
    self =[super init];
    if(self) {
        _service = [NSString stringWithString:service_];

        if(group_)
            _group = [NSString stringWithString:group_];
    }

    return  self;
}

- (NSMutableDictionary *) prepareDict:(NSString *) key {
    NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
    [dict setObject:(__bridge id)kSecClassGenericPassword forKey:(__bridge id)kSecClass];

    NSData *encodedKey = [key dataUsingEncoding:NSUTF8StringEncoding];
    [dict setObject:encodedKey forKey:(__bridge id)kSecAttrGeneric];
    [dict setObject:encodedKey forKey:(__bridge id)kSecAttrAccount];
    [dict setObject:_service forKey:(__bridge id)kSecAttrService];
    [dict setObject:(__bridge id)kSecAttrAccessibleAlwaysThisDeviceOnly forKey:(__bridge id)kSecAttrAccessible];

    if(_group)
        [dict setObject:_group forKey:(__bridge id)kSecAttrAccessGroup];

    return  dict;
}

- (BOOL) insert:(NSString *)key value:(NSData *)data {
    NSMutableDictionary * dict =[self prepareDict:key];
    [dict setObject:data forKey:(__bridge id)kSecValueData];

    OSStatus status = SecItemAdd((__bridge CFDictionaryRef)dict, NULL);
    if(errSecSuccess != status)
        NSLog(@"Unable add item with key = %@ error:%zd",key,status);
    else
        NSLog(@"Add item with key = %@",key);

    return (errSecSuccess == status);
}

- (NSData *) find:(NSString *) key {
    NSMutableDictionary *dict = [self prepareDict:key];
    [dict setObject:(__bridge id)kSecMatchLimitOne forKey:(__bridge id)kSecMatchLimit];
    [dict setObject:(id)kCFBooleanTrue forKey:(__bridge id)kSecReturnData];
    CFTypeRef result = NULL;
    OSStatus status = SecItemCopyMatching((__bridge CFDictionaryRef)dict,&result);

    if(status != errSecSuccess) {
        NSLog(@"Unable to fetch item for key %@ with error:%zd",key,status);
        return nil;
    }

    return (__bridge NSData *)result;
}

- (BOOL) update:(NSString*)key value:(NSData*) data {
    NSMutableDictionary * dictKey =[self prepareDict:key];

    NSMutableDictionary * dictUpdate =[[NSMutableDictionary alloc] init];
    [dictUpdate setObject:data forKey:(__bridge id)kSecValueData];

    OSStatus status = SecItemUpdate((__bridge CFDictionaryRef)dictKey, (__bridge CFDictionaryRef)dictUpdate);
    if(errSecSuccess != status)
        NSLog(@"Unable add update with key = %@ error:%zd",key,status);
    else
        NSLog(@"update with key = %@",key);

    return (errSecSuccess == status);

    return YES;

}

- (BOOL) remove:(NSString*)key {
    NSMutableDictionary *dict = [self prepareDict:key];
    OSStatus status = SecItemDelete((__bridge CFDictionaryRef)dict);
    if( status != errSecSuccess) {
        NSLog(@"Unable to remove item for key %@ with error:%zd",key,status);
        return NO;
    }
    return  YES;
}

@end