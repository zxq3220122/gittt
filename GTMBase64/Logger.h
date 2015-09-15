//
//  Logger.h
//  demo
//
//  Created by 易博 on 15/7/10.
//  Copyright (c) 2015年 lineKong. All rights reserved.
//

#import <Foundation/Foundation.h>

#define SBLog(...)  [[Logger shareLogger] log:__VA_ARGS__]
#define SBLogClose  [[Logger shareLogger] debug:NO]
#define SBLogOpen   [[Logger shareLogger] debug:YES];

@interface Logger : NSObject

+ (Logger *)shareLogger;

- (void)debug:(BOOL)debug;
/**
 *  log
 *
 *  @param string 末尾加nil
 */
- (void)log:(NSString *)string,...;

@end
