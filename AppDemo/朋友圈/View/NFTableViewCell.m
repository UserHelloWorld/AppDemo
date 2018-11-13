//
//  NFTableViewCell.m
//  朋友圈
//
//  Created by apple on 13/11/18.
//  Copyright © 2018 apple. All rights reserved.
//

#import "NFTableViewCell.h"
#import "NFImageView.h"
#define LeftMargin 16

@interface NFTableViewCell ()

@property (strong, nonatomic) UIImageView *headImageView;
@property (strong, nonatomic) UILabel *nameLabel;
@property (strong, nonatomic) UILabel *contentLabel;
@property (strong, nonatomic) UIView *imageListView;
@property (strong, nonatomic) NFImageView *imgView;


@end

@implementation NFTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.headImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
        self.nameLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        self.contentLabel = [[UILabel alloc] init];
        self.imageListView = [[UIView alloc] init];
        self.contentLabel.numberOfLines = 0;
        
        self.imgView = [[NFImageView alloc] initWithFrame:CGRectZero];
        [self addSubview:self.imgView];
        
        [self addSubview:self.headImageView];
        [self addSubview:self.nameLabel];
        [self addSubview:self.contentLabel];
        [self addSubview:self.imageListView];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
   
}

- (void)setModel:(NFModel *)model {
    _model = model;
    self.headImageView.image = [UIImage imageNamed:@"headImg"];
    self.nameLabel.text = model.userName;
    self.contentLabel.text = model.content;
    self.headImageView.frame = CGRectMake(LeftMargin, 5, 30, 30);
    self.nameLabel.frame = CGRectMake(CGRectGetMaxX(self.headImageView.frame) + 5, 5, 200 , 15);
    
    self.imgView.model = model;
    
    CGFloat contentH = [self textHeightText:self.model.content font:self.contentLabel.font floatWidth:self.bounds.size.width-16*2-30];
    
    self.contentLabel.frame = CGRectMake(self.nameLabel.frame.origin.x, self.nameLabel.bounds.size.height + 5, self.bounds.size.width - LeftMargin*2 - self.headImageView.bounds.size.width, contentH);
    
    self.contentLabel.frame = CGRectMake(16+30+5, 20, self.bounds.size.width-16*2-30, contentH);
    NSLog(@"%d",1 % 3);
    int a = (int)self.model.imageCount % 3 > 0 ? (int)self.model.imageCount / 3 + 1: self.model.imageCount / 3;
    self.imgView.frame = CGRectMake(CGRectGetMaxX(self.headImageView.frame), CGRectGetMaxY(self.contentLabel.frame), self.contentLabel.frame.size.width, a * 80);
    
    self.model.rowHeight = CGRectGetMaxY(self.imgView.frame) + 20;
    
}

- (CGFloat)textHeightText:(NSString *)str font:(UIFont *)font floatWidth:(CGFloat)width {
    CGSize size = [str boundingRectWithSize:CGSizeMake(width,MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:font} context:nil].size;
	
    return ceil(size.height);
}


@end

