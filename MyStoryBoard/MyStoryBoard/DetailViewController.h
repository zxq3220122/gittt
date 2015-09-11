//
//  DetailViewController.h
//  MyStoryBoard
//
//  Created by 易博 on 15/9/8.
//  Copyright (c) 2015年 zxq. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (nonatomic, strong) NSString *param;
@end
