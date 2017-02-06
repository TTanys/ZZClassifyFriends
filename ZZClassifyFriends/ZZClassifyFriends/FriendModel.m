//
//  FriendModel.m
//  ZZClassifyFriends
//
//  Created by zhajianjun on 2017/2/6.
//  Copyright © 2017年 TTanys. All rights reserved.
//

#import "FriendModel.h"

@implementation FriendModel

+ (instancetype)friendModelWithHeadImg:(NSString *)headImg
                                  name:(NSString *)name
                                  info:(NSString *)info
                                   net:(NSString *)net
                                  open:(BOOL)open{
    FriendModel *model = [[FriendModel alloc] init];
    model.headImgStr = headImg;
    model.nameStr = name;
    model.infoStr = info;
    model.netStr = net;
    model.open = open;
    return model;
}

@end
