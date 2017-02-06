//
//  SubCell.h
//  ZZClassifyFriends
//
//  Created by zhajianjun on 2017/2/6.
//  Copyright © 2017年 TTanys. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SubModel.h"

@interface SubCell : UITableViewCell

@property (nonatomic, strong) UIButton *voiceBtn;
@property (nonatomic, strong) UIButton *videoBtn;
@property (nonatomic, strong) UIButton *photoBtn;
@property (nonatomic, strong) UIButton *emojiBtn;
@property (nonatomic, strong) UIImageView *lineImgView;

@property (nonatomic, strong) SubModel *subModel;

@end
