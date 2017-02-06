//
//  FriendCell.h
//  ZZClassifyFriends
//
//  Created by zhajianjun on 2017/2/6.
//  Copyright © 2017年 TTanys. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FriendModel.h"

@interface FriendCell : UITableViewCell

@property (nonatomic, strong) UIImageView *headImgView;
@property (nonatomic, strong) UILabel *nameLab;
@property (nonatomic, strong) UILabel *infoLab;
@property (nonatomic, strong) UILabel *netLab;
@property (nonatomic, strong) UIImageView *lineImgView;

@property (nonatomic, strong) FriendModel *friendModel;

@end
