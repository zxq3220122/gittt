//
//  FKBasicAnimationBox.m
//  MyStoryBoard
//
//  Created by 易博 on 15/9/11.
//  Copyright (c) 2015年 zxq. All rights reserved.
//

#import "FKBasicAnimationBox.h"

typedef NS_ENUM(NSInteger, fkAnimationKeyPath) {
    
    fkAnimationKeyPathPosition  = 0,
    fkAnimationKeyPathRotation,
    fkAnimationKeyPathScale,
    fkAnimationKeyPathScaleXXX,
    fkAnimationKeyPathScaleYYY,
    fkAnimationKeyPathOpacity
};

@implementation FKBasicAnimationBox

+ (CABasicAnimation *)fkGetPositionAnimationWithOriginalPosition:(CGPoint)originPosition
                                                andFinalPosition:(CGPoint)finalPosition
                                                     andDuration:(CFTimeInterval)duration
                                                 andAutoreverses:(BOOL)autoreverses
{
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"position"];
    animation.fromValue         = [NSValue valueWithCGPoint:originPosition];
    animation.toValue           = [NSValue valueWithCGPoint:finalPosition];
    animation.duration          = duration;
    animation.autoreverses      = autoreverses;
    return animation;
}

+ (CABasicAnimation *)fkGetRotateAnimationWithOriginValve:(NSNumber *)originValve
                                            andFinalValue:(NSNumber *)finalValue
                                              andDuration:(CFTimeInterval)duration
                                          andAutoreverses:(BOOL)autoreverses
{
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
    animation.fromValue         = originValve;
    animation.toValue           = finalValue;
    animation.duration          = duration;
    animation.autoreverses      = autoreverses;
    return animation;
}

+ (CABasicAnimation *)fkGetScaleAnimationWithOriginValue:(NSNumber *)originValue
                                              andFinalValue:(NSNumber *)finalValue
                                                andDuration:(CFTimeInterval)duration
                                            andAutoreverses:(BOOL)autoreverses
{
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    animation.fromValue         = originValue;
    animation.toValue           = finalValue;
    animation.duration          = duration;
    animation.autoreverses      = autoreverses;
    return animation;

}

+ (CABasicAnimation *)fkGetXXXScaleAnimationWithOriginValue:(NSNumber *)originValue
                                              andFinalValue:(NSNumber *)finalValue
                                                andDuration:(CFTimeInterval)duration
                                            andAutoreverses:(BOOL)autoreverses
{
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform.scale.x"];
    animation.fromValue         = originValue;
    animation.toValue           = finalValue;
    animation.duration          = duration;
    animation.autoreverses      = autoreverses;
    return animation;
}

+ (CABasicAnimation *)fkGetYYYScaleAnimationWithOriginValue:(NSNumber *)originValue
                                              andFinalValue:(NSNumber *)finalValue
                                                andDuration:(CFTimeInterval)duration
                                            andAutoreverses:(BOOL)autoreverses
{
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform.scale.y"];
    animation.fromValue         = originValue;
    animation.toValue           = finalValue;
    animation.duration          = duration;
    animation.autoreverses      = autoreverses;
    return animation;
}

+ (CABasicAnimation *)fkGetOpacityAnimationWithOriginValue:(NSNumber *)originValue
                                             andFinalValue:(NSNumber *)finalValue
                                               andDuration:(CFTimeInterval)duration
                                           andAutoreverses:(BOOL)autoreverses
{
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"opacity"];
    animation.fromValue         = originValue;
    animation.toValue           = finalValue;
    animation.duration          = duration;
    animation.autoreverses      = autoreverses;
    return animation;
}

+ (CABasicAnimation *)fkGetAnimationWithKeyPath:(fkAnimationKeyPath)keyPath
                                 andOriginValue:(NSNumber *)originValue
                                  andFinalValue:(NSNumber *)finalValue
                                    andDuration:(CFTimeInterval)duration
                                 andRepeatCount:(CGFloat)count
                                andAutoreverses:(BOOL)autoreverses
{
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:[FKBasicAnimationBox getKeyPathWith:keyPath]];
    animation.fromValue         = originValue;
    animation.toValue           = finalValue;
    animation.duration          = duration;
    animation.repeatCount       = count;
    animation.autoreverses      = autoreverses;
    return animation;
}

//NSString * const fkAnimationKeyPathPosition = @"position";
//NSString * const fkAnimationKeyPathRotation = @"transform.rotation";
//NSString * const fkAnimationKeyPathScale    = @"transform.scale";
//NSString * const fkAnimationKeyPathScaleXXX = @"transform.scale.x";
//NSString * const fkAnimationKeyPathScaleYYY = @"transform.scale.y";
//NSString * const fkAnimationKeyPathOpacity  = @"opacity";
+ (NSString *)getKeyPathWith:(fkAnimationKeyPath)keyPath
{
    switch (keyPath) {
        case 0:
        {
            return @"position";
            break;
        }
        case 1:
        {
            return @"transform.rotation";
            break;
        }
        case 2:
        {
            return @"transform.scale";
            break;
        }
        case 3:
        {
            return @"transform.scale.x";
            break;
        }
        case 4:
        {
            return @"transform.scale.y";
            break;
        }
        case 5:
        {
            return @"opacity";
            break;
        }
        default:
            break;
    }
}

@end
