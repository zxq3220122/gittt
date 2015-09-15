//
//  Logger.m
//  demo
//
//  Created by 易博 on 15/7/10.
//  Copyright (c) 2015年 lineKong. All rights reserved.
//

#import "Logger.h"

static Logger *logger = nil;
@implementation Logger
{
    BOOL _debug;
}
+ (Logger *)shareLogger
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        logger = [[Logger alloc] init];
    });
    return logger;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _debug = YES;
    }
    return self;
}

- (void)debug:(BOOL)debug
{
    _debug = debug;
}

- (void)log:(NSString *)string,...{
    if (!_debug) {
        return;
    }
    int i = 1;
    va_list args;
    va_start(args, string);
    if (string) {
        NSMutableString *mutString = [NSMutableString stringWithFormat:@"LKSDK调试输出:%@",string];
        while (1) {
            i++;
            NSString *param = va_arg(args, NSString *);
            if (param != nil) {
                if (1 == i % 2) {
                    NSLog(@"%@",param);
                    [mutString appendString:[NSString stringWithFormat:@"  %@",param]];
                    param = nil;
                } else {
                    [mutString appendString:param];
                    param = nil;
                }
            } else {
                NSLog(@"%@",mutString);
                break;
            }
        }
    }
    va_end(args);
}

@end
