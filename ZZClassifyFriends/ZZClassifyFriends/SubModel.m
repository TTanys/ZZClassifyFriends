//
//  SubModel.m
//  ZZClassifyFriends
//
//  Created by zhajianjun on 2017/2/6.
//  Copyright © 2017年 TTanys. All rights reserved.
//

#import "SubModel.h"

@implementation SubModel

+ (instancetype)subModelWithVoice:(NSString *)voice
                            video:(NSString *)video
                            photo:(NSString *)photo
                            emoji:(NSString *)emoji{
    SubModel *model = [[SubModel alloc] init];
    model.voice = voice;
    model.video = video;
    model.photo = photo;
    model.emoji = emoji;
    return model;
}

@end
