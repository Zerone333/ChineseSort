//
//  ChineseString.h
//  YZX_ChineseSorting
//
//  Created by Suilongkeji on 13-10-29.
//  Copyright (c) 2013年 Suilongkeji. All rights reserved.
//


/**
 *  注：  要排序的对象需定义一个属性 NSString *pinYin;
 */



#import <Foundation/Foundation.h>
#import "pinyin.h"

@interface ChineseString : NSObject

/**
 *  首字母排序 @[@"A", @"B"...]
 *
 *  @param stringArr contentArray
 *  @param sortKey   对象排序的属性名称
 *
 *  @return 字母序列 ;
 */
+(NSMutableArray*)IndexArray:(NSArray*)stringArr sortKey:(NSString *)sortKey;

/**
 *  原数组按首字母排序后的分组排序 @[@[],@[]...]
 *
 *  @param stringArr contentArray
 *  @param sortKey   对象排序的属性名称
 *
 *  @return @[@[],@[]...];
 */
+(NSMutableArray*)LetterSortArray:(NSArray*)stringArr sortKey:(NSString *)sortKey;


@end