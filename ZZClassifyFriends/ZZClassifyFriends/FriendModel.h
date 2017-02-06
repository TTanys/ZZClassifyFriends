//
//  FriendModel.h
//  ZZClassifyFriends
//
//  Created by zhajianjun on 2017/2/6.
//  Copyright © 2017年 TTanys. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FriendModel : NSObject

@property (nonatomic, copy) NSString *headImgStr;
@property (nonatomic, copy) NSString *nameStr;
@property (nonatomic, copy) NSString *infoStr;
@property (nonatomic, copy) NSString *netStr;
@property (nonatomic, assign, getter=isOpen) BOOL open;

+ (instancetype)friendModelWithHeadImg:(NSString *)headImg
                                  name:(NSString *)name
                                  info:(NSString *)info
                                   net:(NSString *)net
                                  open:(BOOL)open;

@end
