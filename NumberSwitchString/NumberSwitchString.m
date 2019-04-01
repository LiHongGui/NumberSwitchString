//
//  NumberSwitchString.m
//  BusinessMarket
//
//  Created by Michael Li on 2018/12/21.
//  Copyright © 2018年 Michael Li. All rights reserved.
//

#import "NumberSwitchString.h"

@implementation NumberSwitchString
+(NSString *)numberSwitchString:(NSInteger )number
{
    return [NSString stringWithFormat:@"%ld",number];
}
+ (BOOL)isNumber:(NSString *)strValue
{
    if (strValue == nil || [strValue length] <= 0)
    {
        return NO;
    }
    
    NSCharacterSet *cs = [[NSCharacterSet characterSetWithCharactersInString:@"0123456789"] invertedSet];
    NSString *filtered = [[strValue componentsSeparatedByCharactersInSet:cs] componentsJoinedByString:@""];
    
    if (![strValue isEqualToString:filtered])
    {
        return NO;
    }
    return YES;
}
+(NSInteger)stringSwitchNumber:(NSString *)numberString
{
    return [numberString integerValue];
}
@end
