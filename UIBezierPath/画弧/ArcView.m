
//
//  ArcView.m
//  UIBezierPath
//
//  Created by 吴凡 on 2018/2/25.
//  Copyright © 2018年 吴凡. All rights reserved.
//

#import "ArcView.h"

@implementation ArcView

-(void)drawRect:(CGRect)rect{
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path addArcWithCenter:CGPointMake(140, 140) radius:100 startAngle:M_PI_2 * 3 endAngle:0 clockwise:YES];
    [path addLineToPoint:CGPointMake(140, 140)];
    
    [path moveToPoint:CGPointMake(140, 240)];
    [path addArcWithCenter:CGPointMake(140, 140) radius:100 startAngle:M_PI_2 endAngle:M_PI clockwise:YES];
    [path addLineToPoint:CGPointMake(140, 140)];
    
    [[UIColor redColor] setStroke];
    path.lineWidth = 5;
    [path stroke];
    [[UIColor blueColor] setFill];
    [path fill];
    
}

@end
