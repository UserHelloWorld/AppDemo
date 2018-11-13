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

- (IBAction)btnClick:(id)sender {
}
- (IBAction)BtnClick:(UIButton *)sender {
}
- (IBAction)btnClick:(id)sender {
}
- (IBAction)btnClick:(id)sender {
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [NFDownloadVideoManagerInstance startDownLoadVedio:@"https://media.w3.org/2010/05/sintel/trailer.mp4" progress:^(float progress) {
        
    } finish:^(NSString *locationURL) {
        
    }];
}
- (IBAction)btnClick:(id)sender {
}


@end
