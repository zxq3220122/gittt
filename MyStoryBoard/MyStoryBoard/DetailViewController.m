//
//  DetailViewController.m
//  MyStoryBoard
//
//  Created by 易博 on 15/9/8.
//  Copyright (c) 2015年 zxq. All rights reserved.
//

#import "DetailViewController.h"
#import <objc/runtime.h>
#import <QuartzCore/QuartzCore.h>

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    CALayer *kkLayer = [[CALayer alloc] init];
    kkLayer.backgroundColor = [UIColor grayColor].CGColor;
    kkLayer.frame = CGRectMake(10, 100, 70, 100);
    kkLayer.cornerRadius = 5;
    kkLayer.contents = (id)[UIImage imageNamed:@"武松.jpg"].CGImage;
    [self.view.layer addSublayer:kkLayer];
    
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"position"];
    animation.fromValue = [NSValue valueWithCGPoint:kkLayer.position];
    CGPoint toPoint = kkLayer.position;
    toPoint.x += 180;
    animation.toValue = [NSValue valueWithCGPoint:toPoint];
    
    
    CABasicAnimation *rotateAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
    rotateAnimation.fromValue = [NSNumber numberWithFloat:0.0f];
    rotateAnimation.toValue = [NSNumber numberWithFloat:6.0 * M_PI];
    
    
    CABasicAnimation *scaleAnimation = [CABasicAnimation animationWithKeyPath:@"transform.scale.x"];
    scaleAnimation.duration = 3;
    scaleAnimation.autoreverses = YES;
    scaleAnimation.fromValue = [NSNumber numberWithFloat:1.0f];
    scaleAnimation.toValue = [NSNumber numberWithFloat:2.5f];
    scaleAnimation.fillMode = kCAFillModeForwards;
    
    
    CAAnimationGroup *group = [CAAnimationGroup animation];
    group.autoreverses = YES;
    group.duration = 3.0f;
    group.animations = @[animation,rotateAnimation,scaleAnimation];
    group.fillMode = kCAFillModeForwards;
    [kkLayer addAnimation:group forKey:@"kkLayer"];
}

- (void)viewWillAppear:(BOOL)animated
{
//    NSLog(@"%@",self.param);
//    self.label.text = self.param;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
