//
//  LineView.m
//  UIBezierPath
//
//  Created by 吴凡 on 2018/2/25.
//  Copyright © 2018年 吴凡. All rights reserved.
//

#import "LineView.h"

@implementation LineView

-(void)drawRect:(CGRect)rect{
    
    // 1.创建贝塞尔路径 对象
    UIBezierPath *path = [UIBezierPath bezierPath];
    
    // 2.勾勒图形
    
    //画出一个正方形
    [path moveToPoint:CGPointMake(40, 40)];
    [path addLineToPoint:CGPointMake(200, 40)];
    [path addLineToPoint:CGPointMake(200, 200)];
    [path addLineToPoint:CGPointMake(40, 200)];
    [path addLineToPoint:CGPointMake(40, 40)];
    
    // 画出一个三角形
    [path moveToPoint:CGPointMake(100, 250)];
    [path addLineToPoint:CGPointMake(180, 300)];
    [path addLineToPoint:CGPointMake(70, 280)];
    [path closePath];
    

    
    // 3.设置描边色
    [[UIColor orangeColor] setStroke];
    
    // 4.设置填充色
    [[UIColor clearColor] setFill];
    
    // 5.描边并填充
    [path stroke];
    [path fill];
}

@end
