//
//  NSDate+Utility.h
//  DHUtility
//
//  Created by Dareen Hsu on 5/16/16.
//  Copyright © 2016 Dareen Hsu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (Utility)

- (NSInteger) chineseYearValue;
- (NSInteger) yearValue;
- (NSInteger) monthValue;
- (NSInteger) dayValue;

+ (NSDate *) getToday;
+ (NSString *) getTodayString;
+ (NSString *) getChineseTodayString;
+ (NSString *) getChineseDateStringWithDate:(NSDate *) date;

+ (NSDate *) getDateWithString:(NSString *) dstr format:(NSString *) format;
+ (NSDate *) getDateWithInsurableAge:(NSInteger) year;

- (NSString *) getStringWithFormat:(NSString *) format;

- (NSInteger) insurableYearSinceToday;
- (NSInteger) insurableYearSinceDate:(NSDate *) date;

- (NSInteger) yearSinceToday;
- (NSInteger) yearSinceDate:(NSDate *) date;

- (NSInteger) monthSinceToday;
- (NSInteger) daySinceToday;

- (NSString *) getChineseDateString;
- (NSString *) getFullChineseDateString;

- (NSDate *) increaseYear:(NSInteger) year;
- (NSDate *) increaseMonth:(NSInteger) month;
- (NSDate *) increaseDay:(NSInteger) day;
- (NSDate *) increaseHour:(NSInteger) hour;
- (NSDate *) increaseMinit:(NSInteger) minute;

- (NSDate *) getGMTDate;

@end