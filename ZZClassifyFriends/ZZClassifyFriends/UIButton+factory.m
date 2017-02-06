//
//  UIButton+factory.m
//  ZZClassifyFriends
//
//  Created by zhajianjun on 2017/2/4.
//  Copyright © 2017年 TTanys. All rights reserved.
//

#import "UIButton+factory.h"

@implementation UIButton (factory)

+ (UIButton *)createButtonWithFrame:(CGRect)frame image:(NSString *)image imageSelected:(NSString *)imageSelected target:(id)target selector:(SEL)selector{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = frame;
    [btn setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [btn setBackgroundImage:[UIImage imageNamed:imageSelected] forState:UIControlStateSelected];
    [btn addTarget:self action:selector forControlEvents:UIControlEventTouchUpInside];
    return btn;
}

+ (UIButton *)createButtonWithFrame:(CGRect)frame image:(NSString *)image imagePressed:(NSString *)imagePressed target:(id)target selector:(SEL)selector{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = frame;
    [btn setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [btn setBackgroundImage:[UIImage imageNamed:imagePressed] forState:UIControlStateHighlighted];
    [btn addTarget:self action:selector forControlEvents:UIControlEventTouchUpInside];
    return btn;
}

+ (UIButton *)createButtonWithFrame2:(CGRect)frame image:(NSString *)image imageSelected:(NSString *)imageSelected target:(id)target selector:(SEL)selector{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = frame;
    [btn setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:imageSelected] forState:UIControlStateSelected];
    [btn addTarget:self action:selector forControlEvents:UIControlEventTouchUpInside];
    return btn;
}

+ (UIButton *)createButtonWithFrame2:(CGRect)frame image:(NSString *)image imagePressed:(NSString *)imagePressed target:(id)target selector:(SEL)selector{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = frame;
    [btn setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:imagePressed] forState:UIControlStateHighlighted];
    [btn addTarget:self action:selector forControlEvents:UIControlEventTouchUpInside];
    return btn;
}

+ (UIButton *)createButtonWithFrame:(CGRect)frame title:(NSString *)title target:(id)target selector:(SEL)selector{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = frame;
    [btn setTitle:title forState:UIControlStateNormal];
    [btn addTarget:self action:selector forControlEvents:UIControlEventTouchUpInside];
    return btn;
}

@end
