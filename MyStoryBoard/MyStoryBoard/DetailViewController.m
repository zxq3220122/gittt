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
    
    switch ([self.param intValue]) {
        case 0:
        {
            [self animation1];
            break;
        }
        case 1:
        {
            [self animation2];
            break;
        }
        case 2:
        {
            [self animation3];
            break;
        }
        case 3:
        {
            break;
        }
        default:
            break;
    }
    
}

- (void)animation1
{
    CALayer *kkLayer = [[CALayer alloc] init];
    kkLayer.backgroundColor = [UIColor grayColor].CGColor;
    kkLayer.frame = CGRectMake(10, 100, 70, 100);
    kkLayer.cornerRadius = 5;
    kkLayer.shadowOffset = CGSizeMake(0, 0);
    kkLayer.shadowColor = [UIColor grayColor].CGColor;
    kkLayer.shadowOpacity = 1;
    kkLayer.shadowRadius = 20;
    kkLayer.delegate = self;
//    kkLayer.contents = (id)[UIImage imageNamed:@"武松.jpg"].CGImage;
    [self.view.layer addSublayer:kkLayer];
    
    //帧动画
    CGMutablePathRef path = CGPathCreateMutable();
    CGPathMoveToPoint(path, NULL, 50, 120);
    CGPathAddLineToPoint(path, NULL, 60, 130);
    CGPathAddLineToPoint(path, NULL, 70, 140);
    CGPathAddLineToPoint(path, NULL, 80, 150);
    CGPathAddLineToPoint(path, NULL, 90, 160);
    CGPathAddLineToPoint(path, NULL, 100, 170);
    
    CGPathAddCurveToPoint(path, NULL, 50, 275, 150, 275, 10, 120);
    CGPathAddCurveToPoint(path,NULL,150.0,275.0,250.0,275.0,90.0,120.0);
    CGPathAddCurveToPoint(path,NULL,250.0,275.0,350.0,275.0,110.0,120.0);
    CGPathAddCurveToPoint(path,NULL,350.0,275.0,450.0,275.0,130.0,120.0);
    
    CAKeyframeAnimation *animation = [CAKeyframeAnimation animationWithKeyPath:@"position"];
    animation.path = path;
    animation.duration = 3.0f;
    CFRelease(path);
    [kkLayer addAnimation:animation forKey:nil];
    
    
//    CABasicAnimation *pulse = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
//    pulse.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
//    pulse.duration = 0.5 + (rand() % 10) * 0.05;
//    pulse.repeatCount = 1;
//    pulse.autoreverses = YES;
//    pulse.fromValue = [NSNumber numberWithFloat:.8];
//    pulse.toValue = [NSNumber numberWithFloat:1.2];
//    [kkLayer addAnimation:pulse forKey:@"hehe"];

//    CABasicAnimation *anim = [CABasicAnimation animationWithKeyPath:@"bounds"];
//    anim.duration = 1.f;
//    anim.fromValue = [NSValue valueWithCGRect:CGRectMake(0,0,10,10)];
//    anim.toValue = [NSValue valueWithCGRect:CGRectMake(10,10,200,200)];
//    anim.byValue  = [NSValue valueWithCGRect:kkLayer.bounds];
////    nim.toValue = (id)[UIColor redColor].CGColor;
////    anim.fromValue =  (id)[UIColor blackColor].CGColor;
//    
//    anim.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
//    anim.repeatCount = 1;
//    anim.autoreverses = YES;
//    [kkLayer addAnimation:anim forKey:nil];
    
//    CABasicAnimation *anim2 = [CABasicAnimation animationWithKeyPath:@"cornerRadius"];
//    anim2.duration = 1.f;
//    anim2.fromValue = [NSNumber numberWithFloat:0.f];
//    anim2.toValue = [NSNumber numberWithFloat:30.f];
//    anim2.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
//    anim2.repeatCount = CGFLOAT_MAX;
//    anim2.autoreverses = YES;
//    [kkLayer addAnimation:anim2 forKey:nil];
    
    
//    CABasicAnimation *anim = [CABasicAnimation animationWithKeyPath:@"contents"];
//    anim.duration = 1.f;
//    anim.fromValue = (id)[UIImage imageNamed:@"武松.jpg"].CGImage;
//    anim.toValue = (id)[UIImage imageNamed:@"姜太公.jpg"].CGImage;
//    anim.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
//    anim.repeatCount = CGFLOAT_MAX;
//    anim.autoreverses = YES;
//    [kkLayer addAnimation:anim forKey:nil];
    
//    CABasicAnimation *anim = [CABasicAnimation animationWithKeyPath:@"shadowColor"];
//    anim.duration = 1.f;
//    anim.toValue = (id)[UIColor redColor].CGColor;
//    anim.fromValue =  (id)[UIColor blackColor].CGColor;
//    
//    anim.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
//    anim.repeatCount = CGFLOAT_MAX;
//    anim.autoreverses = YES;
//    [kkLayer addAnimation:anim forKey:nil];
    
//    CABasicAnimation *animation=[CABasicAnimation animationWithKeyPath:@"opacity"];
//    animation.fromValue=[NSNumber numberWithFloat:1.0];
//    animation.toValue=[NSNumber numberWithFloat:0.0];
//    animation.autoreverses=YES;
//    animation.duration=0.2;
//    animation.repeatCount=FLT_MAX;
//    animation.removedOnCompletion=NO;
//    animation.fillMode=kCAFillModeForwards;
//    [kkLayer addAnimation:animation forKey:nil];
    
//    CABasicAnimation *animShadowoffset = [CABasicAnimation animationWithKeyPath:@"shadowOffset"];
//    animShadowoffset.duration = 1.0f;
//    animShadowoffset.toValue = [NSValue valueWithCGSize:CGSizeMake(3, 3)];
//    animShadowoffset.fromValue = [NSValue valueWithCGSize:kkLayer.shadowOffset];
//    animShadowoffset.repeatCount = CGFLOAT_MAX;
//    animShadowoffset.autoreverses = YES;
//    CAAnimationGroup *group = [CAAnimationGroup animation];
//    group.autoreverses = YES;
//    group.duration = 1;
//    group.repeatCount = CGFLOAT_MAX;
//    group.animations = @[anim,animShadowoffset];
//    [kkLayer addAnimation:group forKey:nil];
    
    //    CALayer *kkLayer = [[CALayer alloc] init];
    //    kkLayer.backgroundColor = [UIColor grayColor].CGColor;
    //    kkLayer.frame = CGRectMake(10, 100, 70, 100);
    //    kkLayer.cornerRadius = 5;
    //    kkLayer.contents = (id)[UIImage imageNamed:@"武松.jpg"].CGImage;
    //    [self.view.layer addSublayer:kkLayer];
    //
    //    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"position"];
    //    animation.fromValue = [NSValue valueWithCGPoint:kkLayer.position];
    //    CGPoint toPoint = kkLayer.position;
    //    toPoint.x += 180;
    //    animation.duration = 3.0f;
    //    animation.autoreverses = YES;
    //    animation.toValue = [NSValue valueWithCGPoint:toPoint];
    //
    //    kkLayer.position = CGPointMake(kkLayer.position.x + 180, kkLayer.position.y);
    //
    //    [kkLayer addAnimation:animation forKey:@"kkLayer"];
    //
    //    CABasicAnimation *rotateAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
    //    rotateAnimation.fromValue = [NSNumber numberWithFloat:0.0f];
    //    rotateAnimation.toValue = [NSNumber numberWithFloat:6.0 * M_PI];
    //
    //
    //    CABasicAnimation *scaleAnimation = [CABasicAnimation animationWithKeyPath:@"transform.scale.x"];
    //    scaleAnimation.duration = 3;
    //    scaleAnimation.autoreverses = YES;
    //    scaleAnimation.fromValue = [NSNumber numberWithFloat:1.0f];
    //    scaleAnimation.toValue = [NSNumber numberWithFloat:2.5f];
    //    scaleAnimation.fillMode = kCAFillModeForwards;
    //
    //
    //    CAAnimationGroup *group = [CAAnimationGroup animation];
    //    group.autoreverses = YES;
    //    group.duration = 3.0f;
    //    group.animations = @[animation,rotateAnimation,scaleAnimation];
    //    group.fillMode = kCAFillModeForwards;
    //    [kkLayer addAnimation:group forKey:@"kkLayer"];
}

- (void)animation2
{
    UIImageView *imageview = [[UIImageView alloc] initWithFrame:CGRectMake(50, 50, 80, 100)];
    imageview.image = [UIImage imageNamed:@"武松.jpg"];
    [self.view addSubview:imageview];
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:2];
    imageview.frame = CGRectMake(100, 90, 80, 100);
    [UIView commitAnimations];
}

- (void)animation3
{
    UIView *view1 = [[UIView alloc] initWithFrame:CGRectMake(0, 100, 100, 100)];
    view1.backgroundColor = [UIColor redColor];
    [self.view addSubview:view1];
    
    UIView *view2 = [[UIView alloc] initWithFrame:CGRectMake(50, 150, 100, 100)];
    view2.backgroundColor = [UIColor grayColor];
    [self.view addSubview:view2];
    
    
    CATransition *animation = [CATransition animation];
    animation.duration = 3.0f;
    animation.timingFunction = UIViewAnimationCurveEaseInOut;
    animation.fillMode = kCAFillModeForwards;
    animation.type = kCATransitionFade;
    animation.subtype = kCATransitionFromRight;
    
    [self.view.layer addAnimation:animation forKey:@"animation"];
    
    [self.view exchangeSubviewAtIndex:0 withSubviewAtIndex:1];
}

- (void)viewWillAppear:(BOOL)animated
{
    
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
