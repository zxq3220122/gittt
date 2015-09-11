//
//  FKBasicAnimationBox.h
//  MyStoryBoard
//
//  Created by 易博 on 15/9/11.
//  Copyright (c) 2015年 zxq. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>
#import <UIKit/UIKit.h>
@interface FKBasicAnimationBox : NSObject

+ (CABasicAnimation *)fkGetPositionAnimationWithOriginalPosition:(CGPoint)originPosition
                                                andFinalPosition:(CGPoint)finalPosition
                                                     andDuration:(CFTimeInterval)duration
                                                 andAutoreverses:(BOOL)autoreverses;

+ (CABasicAnimation *)fkGetRotateAnimationWithOriginValve:(NSNumber *)originValve
                                            andFinalValue:(NSNumber *)finalValue
                                              andDuration:(CFTimeInterval)duration
                                          andAutoreverses:(BOOL)autoreverses;

+ (CABasicAnimation *)fkGetScaleAnimationWithOriginValue:(NSNumber *)originValue
                                              andFinalValue:(NSNumber *)finalValue
                                                andDuration:(CFTimeInterval)duration
                                            andAutoreverses:(BOOL)autoreverses;

+ (CABasicAnimation *)fkGetXXXScaleAnimationWithOriginValue:(NSNumber *)originValue
                                           andFinalValue:(NSNumber *)finalValue
                                             andDuration:(CFTimeInterval)duration
                                         andAutoreverses:(BOOL)autoreverses;

+ (CABasicAnimation *)fkGetYYYScaleAnimationWithOriginValue:(NSNumber *)originValue
                                              andFinalValue:(NSNumber *)finalValue
                                                andDuration:(CFTimeInterval)duration
                                            andAutoreverses:(BOOL)autoreverses;

@end
