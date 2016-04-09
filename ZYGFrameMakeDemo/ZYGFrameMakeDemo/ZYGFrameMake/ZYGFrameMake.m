//
//  ZYGFrameMake.m
//  quyubianshi
//
//  Created by ZhangYunguang on 16/2/29.
//  Copyright © 2016年 ZhangYunguang. All rights reserved.
//

#import "ZYGFrameMake.h"

#define kScreen_height  [[UIScreen mainScreen] bounds].size.height
#define kScreen_width   [[UIScreen mainScreen] bounds].size.width



//  4/4s 5/5s 320  6/6s 375  6p/6sp 414
static const CGFloat baseScreenWidth = 375.0f;
//  4/4s 修改480 5/5s 568  6/6s 667  6p/6sp 736
static const CGFloat baseScreenHeight = 667.0f;

static CGFloat scaleXAndWidth;
static CGFloat scaleYAndHeight;

@implementation ZYGFrameMake

#pragma mark - 创建单例
+(instancetype)shared{
    static ZYGFrameMake *autoFrame = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        autoFrame = [[ZYGFrameMake alloc] init];
    });
    return autoFrame;
}
#pragma mark - 初始化
-(instancetype)init{
    if (self = [super init]) {
        [self initScaleRatio];
    }
    return self;
}
#pragma mark - 初始化缩放系数
-(void)initScaleRatio{
    scaleXAndWidth = kScreen_width/baseScreenWidth;
    scaleYAndHeight = kScreen_height/baseScreenHeight;
}

+(CGRect)makeFrameX:(CGFloat)x Y:(CGFloat)y W:(CGFloat)width H:(CGFloat)height{
    [self shared];
    return CGRectMake(x * scaleXAndWidth, y * scaleYAndHeight, width * scaleXAndWidth, height * scaleYAndHeight);
}

+(CGRect ) makeCloseWidgetFrameX:(CGFloat) x relativeY:(CGFloat) relativeY W:(CGFloat) width H:(CGFloat) height{
    [self shared];
    CGFloat tempY = relativeY/scaleYAndHeight;
    return [self makeFrameX:x Y:tempY W:width H:height];
}

+(CGRect ) makeCloseWidgetFrameRelativeX:(CGFloat) relativeX relativeY:(CGFloat) relativeY W:(CGFloat) width H:(CGFloat) height{
    [self shared];
    CGFloat tempX = relativeX/scaleXAndWidth;
    CGFloat tempY = relativeY/scaleYAndHeight;
    return [self makeFrameX:tempX Y:tempY W:width H:height];
}

+(CGRect ) makeCloseWidgetFrameX:(CGFloat) relativeX Y:(CGFloat) y W:(CGFloat) width H:(CGFloat) height{
    [self shared];
    CGFloat tempX = relativeX/scaleXAndWidth;
    return [self makeFrameX:tempX Y:y W:width H:height];
}

+(CGRect ) makeConstantHeightWidgetFrameX:(CGFloat) x Y:(CGFloat) y W:(CGFloat) width constantHeight:(CGFloat) constantHeight{
    [self shared];
    CGFloat tempY = y/scaleYAndHeight;
    CGFloat tempH = constantHeight/scaleYAndHeight;
    return [self makeFrameX:x Y:tempY W:width H:tempH];
}

+(CGFloat)makeX:(CGFloat)x{
    [self shared];
    return x * scaleXAndWidth;
}
+(CGFloat)makeY:(CGFloat)y{
    [self shared];
    return y * scaleYAndHeight;
}
+(CGFloat)makeW:(CGFloat)w{
    [self shared];
    return w * scaleXAndWidth;
}
+(CGFloat)makeH:(CGFloat)h{
    [self shared];
    return h * scaleYAndHeight;
}
@end
