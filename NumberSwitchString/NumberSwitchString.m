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
+(NSString *)objSwitchString:(NSObject *)obj
{
    return [NSString stringWithFormat:@"%@",obj];
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
+(NSMutableArray *)stringSwitchArray:(NSString *)numberString
{
    return [NSMutableArray arrayWithArray:[numberString componentsSeparatedByString:@"-"]];
}
+(NSMutableString *)arraySwitchString:(NSMutableArray *)stringArray withCharStr:(NSString *)charStr
{
    NSMutableString *mutaStr = [NSMutableString string];
    for (int i = 0; i < stringArray.count; i++) {
        if ( i == 0) {
            [mutaStr appendString:stringArray[i]];
        }else {
            [mutaStr appendString:[NSString stringWithFormat:@"%@%@",charStr,stringArray[i]]];
        }
    }
    return mutaStr;
}
@end
