//
//  CollectionView.m
//  MyStoryBoard
//
//  Created by 易博 on 15/9/14.
//  Copyright (c) 2015年 zxq. All rights reserved.
//

#import "CollectionView.h"
#import "CollectionViewCell.h"
@interface CollectionView ()<UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout,UIScrollViewDelegate>

@end

@implementation CollectionView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
    
    self.array = [NSMutableArray array];
    for (int i = 0; i < 100; i++) {
        CGFloat high = arc4random() % 200;
        [self.array addObject:[NSString stringWithFormat:@"%f",high]];//模拟数据用来记录所有cel的高度
    }
    
    
    
    
    
    [self.collectionView registerClass:[CollectionViewCell class] forCellWithReuseIdentifier:@"kcellIdentifier"];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -CollectionView datasource
//section
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}
//item个数
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 100;
    
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    //重用cell
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"kcellIdentifier" forIndexPath:indexPath];
    cell.backgroundColor = [UIColor redColor];
    
    NSInteger uppon = indexPath.row % 3;//每行第几个
    NSInteger under = indexPath.row / 3;//第几行
    
    CGFloat high = [[self.array objectAtIndex:indexPath.row] floatValue];//该cell的高度
    
    CGFloat x = 280 / 3.0 * uppon + 10 * (uppon +1);//计算当前行所有cell的x坐标  根据cell大小和布局来计算，前面的100是宽，后面的10是间距
    CGFloat y = (under + 1) * 10;//计算当前cell的y坐标，此处为起始，上下间距都为10
    
    for (int i = 0; i < under; i++) {
        NSInteger position = uppon + i * 3;//分三列，逐步累计每行的间距
        y += [[self.array objectAtIndex:position] floatValue];//用上面的累间距加上上面一行的高度
    }
    cell.frame = CGRectMake(x, y, 280 / 3.0, high);
    
    return cell;
    
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(280 / 3.0, [[self.array objectAtIndex:indexPath.row] floatValue]);
}

//到边框的间距
-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsMake(10, 10, 10, 10);}


//item上下间距
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section
{
    return 5;
}

//item左右间距
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section
{
    return 50;
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
