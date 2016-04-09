//
//  ZYGFrameMake.h
//  quyubianshi
//
//  Created by ZhangYunguang on 16/2/29.
//  Copyright © 2016年 ZhangYunguang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ZYGFrameMake : NSObject
/**
 *  对frame进行缩放，得到缩放后的frame，适用于使用绝对坐标来写控件的frame
 *
 *  @param x      x
 *  @param y      y
 *  @param width  width
 *  @param height height
 *
 *  @return CGRect(缩放后)
 */
+(CGRect ) makeFrameX:(CGFloat) x Y:(CGFloat) y W:(CGFloat) width H:(CGFloat) height;
/**
 *  以其它控件的y坐标作为参照，返回该控件的frame
 *
 *  @param x         该控件的x坐标
 *  @param RelativeY 其它控件的y坐标 + ...
 *  @param width     该控件的宽度
 *  @param height    该控件的高度
 *
 *  @return CGRect
 */
+(CGRect ) makeCloseWidgetFrameX:(CGFloat) x relativeY:(CGFloat) relativeY W:(CGFloat) width H:(CGFloat) height;
/**
 *  以其它控件的x和y坐标作为参照，返回该控件的frame
 *
 *  @param Relativex 其它控件的x坐标 + ...
 *  @param y         其它控件的y坐标 + ...
 *  @param width     该控件的宽度
 *  @param height    该控件的高度
 *
 *  @return CGRect
 */
+(CGRect ) makeCloseWidgetFrameRelativeX:(CGFloat) relativeX relativeY:(CGFloat) relativeY W:(CGFloat) width H:(CGFloat) height;
/**
 *  以其它控件的x坐标作为参照，返回该控件的frame
 *
 *  @param Relativex 其它控件的x坐标 + ...
 *  @param y         该控件的y坐标
 *  @param width     该控件的宽度
 *  @param height    该控件的高度
 *
 *  @return CGRect
 */
+(CGRect ) makeCloseWidgetFrameX:(CGFloat) relativeX Y:(CGFloat) y W:(CGFloat) width H:(CGFloat) height;
/**
 *  用于创建固定高度的导航栏
 *
 *  @param x              该控件的x坐标
 *  @param y              该控件的y坐标
 *  @param width          该控件的宽度
 *  @param constantHeight 该控件的固定高度
 *
 *  @return CGRect
 */
+(CGRect ) makeConstantHeightWidgetFrameX:(CGFloat) x Y:(CGFloat) y W:(CGFloat) width constantHeight:(CGFloat) constantHeight;

/****************************************************
 *                                                  *
 *    下面这些一般是用不到的,除非是在定制性比较高的地方     *
 *                                                  *
 ****************************************************
 */
/**
 *  单独定制x
 *
 *  @param x x坐标
 *
 *  @return 返回缩放过后的x
 */
+(CGFloat ) makeX:(CGFloat )x;
/**
 *  单独定制y
 *
 *  @param y y坐标
 *
 *  @return 返回缩放过后的y
 */
+(CGFloat ) makeY:(CGFloat )y;
/**
 *  单独定制宽
 *
 *  @param w 宽度
 *
 *  @return 返回缩放过后的宽度
 */
+(CGFloat ) makeW:(CGFloat )w;
/**
 *  单独定制高
 *
 *  @param h 高度
 *
 *  @return 返回缩放过后的高度
 */
+(CGFloat ) makeH:(CGFloat )h;
@end
