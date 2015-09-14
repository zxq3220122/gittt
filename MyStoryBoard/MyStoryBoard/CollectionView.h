//
//  CollectionView.h
//  MyStoryBoard
//
//  Created by 易博 on 15/9/14.
//  Copyright (c) 2015年 zxq. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CollectionView : UIViewController
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@property (strong , nonatomic) NSMutableArray *array;

@end
