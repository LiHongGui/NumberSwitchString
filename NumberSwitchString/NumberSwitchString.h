//
//  NumberSwitchString.h
//  BusinessMarket
//
//  Created by Michael Li on 2018/12/21.
//  Copyright © 2018年 Michael Li. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NumberSwitchString : NSObject
+(NSString *)numberSwitchString:(long )number;
+(NSString *)objSwitchString:(NSObject *)obj;
+ (BOOL)isNumber:(NSString *)strValue;
+(NSInteger)stringSwitchNumber:(NSString *)numberString;
+(NSMutableArray *)stringSwitchArray:(NSString *)numberString;
+(NSMutableString *)arraySwitchString:(NSMutableArray *)stringArray withCharStr:(NSString *)charStr;
@end

NS_ASSUME_NONNULL_END
