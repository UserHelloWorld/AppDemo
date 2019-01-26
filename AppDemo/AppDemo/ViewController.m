//
//  ViewController.m
//  AppDemo
//
//  Created by apple on 8/11/18.
//  Copyright © 2018 apple. All rights reserved.
//

#import "ViewController.h"
#import "NFDownloadVideoManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    [NFDownloadVideoManagerInstance startDownLoadVedio:@"https://media.w3.org/2010/05/sintel/trailer.mp4" progress:^(float progress) {
//        
//    } finish:^(NSString *locationURL) {
//        
//    }];
    [[NFDownloadVideoManager shareInstance] startDownLoadVedio:@"https://www.bilibili.com/video/av14410295" progress:^(float progress) {
        
    } finish:^(NSString *locationURL) {
        
    }];
}


@end
