//
//  main.m
//  SortMethod
//
//  Created by chenfenglong on 2017/6/12.
//  Copyright © 2017年 chenfenglong. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *arrayNumber = [NSMutableArray arrayWithArray:@[@(1231231),@(234),@(828342),@(2),@(1),@(122342)]];
        for (int i = 0; i < arrayNumber.count - 1; i++) {
            for (int j = i + 1; j < arrayNumber.count; j++) {
                NSInteger iValue = [arrayNumber[i] integerValue];
                NSInteger jValue = [arrayNumber[j] integerValue];
                if (iValue > jValue) {
                    [arrayNumber exchangeObjectAtIndex:i withObjectAtIndex:j];
                }
            }
        }
        NSLog(@"%@",arrayNumber);
        
        arrayNumber = [NSMutableArray arrayWithArray:@[@(1231231),@(234),@(828342),@(2),@(1),@(122342)]];
        for (int i = 0; i < arrayNumber.count; i++) {
            for (int j = 0; j < arrayNumber.count - i; j++) {
                if (j + 1 < arrayNumber.count - i) {
                    NSInteger iValue = [arrayNumber[j] integerValue];
                    NSInteger jValue = [arrayNumber[j+1] integerValue];
                    if (iValue > jValue) {
                        [arrayNumber exchangeObjectAtIndex:j withObjectAtIndex:j+1];
                    }
                }
            }
        }
        NSLog(@"%@",arrayNumber);
        
        arrayNumber = [NSMutableArray arrayWithArray:@[@(1231231),@(234),@(828342),@(2),@(1),@(122342)]];
        for (int i = 1; i < arrayNumber.count; i++) {
            
            //找出需要插入的位置j
            int j = 0;
            while (j < i) {
                if ([arrayNumber[i] integerValue] < [arrayNumber[j] integerValue]) {
                    break;
                }
                j++;
            }
            
            //从需要被插入的元素的位置到需要插入的位置，然后
            int a = i;
            NSNumber *tempNeedChangeValue = arrayNumber[i];
            while (a > j) {
                arrayNumber[a] = arrayNumber[a - 1];
                a--;
            }
            arrayNumber[j] = tempNeedChangeValue;
        }
        NSLog(@"%@",arrayNumber);
    }
    return 0;
}
