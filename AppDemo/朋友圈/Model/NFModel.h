//
//  NFModel.h
//  朋友圈
//
//  Created by apple on 13/11/18.
//  Copyright © 2018 apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NFModel : NSObject

@property (assign, nonatomic) CGFloat rowHeight;

@property (copy, nonatomic) NSString *userName;
@property (copy, nonatomic) NSString *content;
@property (assign, nonatomic) CGFloat imageCount;


@end

NS_ASSUME_NONNULL_END
