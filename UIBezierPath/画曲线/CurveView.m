
//
//  CurveView.m
//  UIBezierPath
//
//  Created by 吴凡 on 2018/2/25.
//  Copyright © 2018年 吴凡. All rights reserved.
//

#import "CurveView.h"

@implementation CurveView

-(void)drawRect:(CGRect)rect{
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(140, 40)];
    
    // 设置终点和锚点 进行曲线绘制
    [path addCurveToPoint:CGPointMake(40, 180) controlPoint1:CGPointMake(40, 40) controlPoint2:CGPointMake(140, 180)];
    
    [path addCurveToPoint:CGPointMake(140, 320) controlPoint1:CGPointMake(140, 180) controlPoint2:CGPointMake(40, 320)];

    
    [[UIColor orangeColor] setStroke];
    path.lineWidth = 5;
    [path stroke];
    
    
    // 绘制矩形
    UIBezierPath *path2 = [UIBezierPath bezierPathWithRect:CGRectMake(20, 100, 150, 80)];
    [[UIColor greenColor] setStroke];
    path2.lineWidth = 2;
    [path2 stroke];
    
    // 绘制圆角矩形
    UIBezierPath *path3 = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(20, 300, 100, 100) cornerRadius:10];
    [[UIColor yellowColor] setStroke];
    path3.lineWidth = 3;
    [path3 stroke];
    
    // 绘制椭圆
    UIBezierPath *path4 = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(120, 100, 80, 50)];
    [[UIColor blueColor] setStroke];
    [[UIColor redColor] setFill];
    [path4 stroke];
    [path4 fill];


    
}

@end
