//
//  FriendCell.m
//  ZZClassifyFriends
//
//  Created by zhajianjun on 2017/2/6.
//  Copyright © 2017年 TTanys. All rights reserved.
//

#import "FriendCell.h"
#import "UIView+frame.h"

#define CellHeight 60

@implementation FriendCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self configSubViews];
    }
    return self;
}

- (void)configSubViews{
    _headImgView = [[UIImageView alloc] initWithFrame:CGRectMake(6, 5, 50, 50)];
    //_headImgView.contentMode = UIViewContentModeScaleAspectFill;
    [_headImgView makeCorner:25];
    [self.contentView addSubview:_headImgView];
    
    _nameLab = [[UILabel alloc] initWithFrame:CGRectMake(62, 5, 200, 25)];
    _nameLab.font = [UIFont systemFontOfSize:15];
    [self.contentView addSubview:_nameLab];
    
    _infoLab = [[UILabel alloc] initWithFrame:CGRectMake(62, 28, ScreenWidth-62-6, 25)];
    _infoLab.textColor = [UIColor lightGrayColor];
    _infoLab.font = [UIFont systemFontOfSize:13];
    [self.contentView addSubview:_infoLab];
    
    _netLab = [[UILabel alloc] initWithFrame:CGRectMake(ScreenWidth-50-6, 5, 50, 25)];
    _netLab.textColor = [UIColor lightGrayColor];
    _netLab.textAlignment = NSTextAlignmentRight;
    _netLab.font = [UIFont systemFontOfSize:13];
    [self.contentView addSubview:_netLab];
    
    _lineImgView = [[UIImageView alloc] initWithFrame:CGRectMake(62, 60-1, ScreenWidth-62, 1)];
    _lineImgView.image = [UIImage imageNamed:@"line"];
    [self.contentView addSubview:_lineImgView];
    
}

- (void)setFriendModel:(FriendModel *)friendModel{
    _headImgView.image = [UIImage imageNamed:friendModel.headImgStr];
    _nameLab.text = friendModel.nameStr;
    _infoLab.text = friendModel.infoStr;
    _netLab.text = friendModel.netStr;
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
