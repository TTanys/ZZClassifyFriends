//
//  SubModel.h
//  ZZClassifyFriends
//
//  Created by zhajianjun on 2017/2/6.
//  Copyright © 2017年 TTanys. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SubModel : NSObject

@property (nonatomic, copy) NSString *voice;
@property (nonatomic, copy) NSString *video;
@property (nonatomic, copy) NSString *photo;
@property (nonatomic, copy) NSString *emoji;

+ (instancetype)subModelWithVoice:(NSString *)voice
                            video:(NSString *)video
                            photo:(NSString *)photo
                            emoji:(NSString *)emoji;

@end
