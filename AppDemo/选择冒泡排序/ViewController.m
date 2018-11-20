//
//  ViewController.m
//  选择冒泡排序
//
//  Created by apple on 19/11/18.
//  Copyright © 2018 apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self selectionSort];
    
}

- (void)selectionSort
{
    NSMutableArray *array = [NSMutableArray array];
    [array addObjectsFromArray:@[@"1",@"4",@"2",@"3",@"5",@"9",@"6",@"8"]];
    for (int i = 0; i < array.count -1; i++) {
        for (int j = 0; j < array.count - 1 -i; j++) {
            if ([array[j] intValue] > [array[j+1] intValue]) {
                [array exchangeObjectAtIndex:j withObjectAtIndex:j+1];
            }
        }
    }
    NSLog(@"%@",array);
}

- (void)bubbleSort {
    
}

@end
