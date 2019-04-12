//
//  ViewController.m
//  UIBezierPath
//
//  Created by 吴凡 on 2018/2/25.
//  Copyright © 2018年 吴凡. All rights reserved.
//

#import "ViewController.h"
#import "LineView.h"
#import "CurveView.h"
#import "ArcView.h"



@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

//    [self drawLine];
//    [self drawCurve];
    [self drawArc];
}

-(void)drawLine{
    
    LineView *lineView = [LineView new];
    lineView.frame = self.view.bounds;
    lineView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:lineView];
    
}

-(void)drawCurve{
    
    CurveView *curveView = [CurveView new];
    curveView.frame = self.view.bounds;
    curveView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:curveView];
    
}

-(void)drawArc{
    
    ArcView *arcView = [ArcView new];
    arcView.frame = self.view.bounds;
    arcView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:arcView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
