//
//  SubCell.m
//  ZZClassifyFriends
//
//  Created by zhajianjun on 2017/2/6.
//  Copyright © 2017年 TTanys. All rights reserved.
//

#import "SubCell.h"
#import "UIView+frame.h"
#import "UIButton+factory.h"

@implementation SubCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self configSubViews];
    }
    return self;
}

- (void)configSubViews{
    NSArray *titArr = [NSArray arrayWithObjects:@"语音",@"视频",@"图片",@"表情", nil];
    for (int i=0; i<4; i++) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
        btn.tag = 600+i;
        btn.frame = CGRectMake(60+((ScreenWidth-60)/4.0)*i, 0, (ScreenWidth-60)/4.0, 40);
        [btn setTitle:titArr[i] forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
        [self.contentView addSubview:btn];
    }
    
    _lineImgView = [[UIImageView alloc] initWithFrame:CGRectMake(62, 40-1, ScreenWidth-62, 1)];
    _lineImgView.image = [UIImage imageNamed:@"line"];
    [self.contentView addSubview:_lineImgView];
    
//    _voiceBtn = [UIButton createButtonWithFrame:CGRectMake(60, 0, (ScreenWidth-60)/4.0, 40) title:titArr[0] target:self selector:@selector(btnClicked:)];
//    _voiceBtn.tag = 600;
//    [self.contentView addSubview:_voiceBtn];
    
}

- (void)btnClicked:(UIButton *)btn{
    switch (btn.tag-600) {
        case 0:
        {
            
        }
            break;
        case 1:
        {
            
        }
            break;
        case 2:
        {
            
        }
            break;
        case 3:
        {
            
        }
            break;
            
        default:
            break;
    }
    NSLog(@"%@",btn.currentTitle);
}

- (void)setSubModel:(SubModel *)subModel{
    
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
