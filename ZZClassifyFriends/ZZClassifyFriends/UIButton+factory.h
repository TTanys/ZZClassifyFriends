//
//  UIButton+factory.h
//  ZZClassifyFriends
//
//  Created by zhajianjun on 2017/2/4.
//  Copyright © 2017年 TTanys. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (factory)

+ (UIButton *)createButtonWithFrame:(CGRect)frame image:(NSString *)image imageSelected:(NSString *)imageSelected target:(id)target selector:(SEL)selector;

+ (UIButton *)createButtonWithFrame:(CGRect)frame image:(NSString *)image imagePressed:(NSString *)imagePressed target:(id)target selector:(SEL)selector;

+ (UIButton *)createButtonWithFrame2:(CGRect)frame image:(NSString *)image imageSelected:(NSString *)imageSelected target:(id)target selector:(SEL)selector;

+ (UIButton *)createButtonWithFrame2:(CGRect)frame image:(NSString *)image imagePressed:(NSString *)imagePressed target:(id)target selector:(SEL)selector;

+ (UIButton *)createButtonWithFrame:(CGRect)frame title:(NSString *)title target:(id)target selector:(SEL)selector;

@end
