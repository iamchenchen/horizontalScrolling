//
//  CCCollectionView.m
//  horizontal
//
//  Created by Chenchen Zheng on 10/15/15.
//  Copyright © 2015 Chenchen Zheng. All rights reserved.
//

#import "CCCollectionView.h"
#import "CCCollectionViewCell.h"
@interface CCCollectionView () <UICollectionViewDataSource, UICollectionViewDelegateFlowLayout> {
    CGSize _itemSize;
    UICollectionView *_collectionView;
}
@end

@implementation CCCollectionView
static NSString * const reuseIdentifier = @"Cell";

- (instancetype)initWithFrame:(CGRect)frame andItemSize:(CGSize)itemSize {
    self = [super initWithFrame:frame];
    if (self) {
        [self setBackgroundColor:[UIColor redColor]];
        
        //set header
        UIView* header = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 30, frame.size.height)];
        [header setBackgroundColor:[UIColor blackColor]];
        [self addSubview:header];

        _itemSize = itemSize;
        
        UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
        [flowLayout setItemSize:itemSize];
        [flowLayout setScrollDirection:UICollectionViewScrollDirectionHorizontal];
        
        CGRect collectionFrame = CGRectMake(header.frame.size.width, 0, frame.size.width- header.frame.size.width, frame.size.height);
        
        _collectionView = [[UICollectionView alloc] initWithFrame:collectionFrame collectionViewLayout:flowLayout];
        
        _collectionView.delegate = self;
        _collectionView.dataSource = self;
        [_collectionView setBackgroundColor:[UIColor blueColor]];
        [self addSubview:_collectionView];
        [_collectionView registerClass:[CCCollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    }

    return self;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 15;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CCCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    // Configure the cell
    
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return _itemSize;
}

//- (UICollectionReusableView *)collectionView: (UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
//    return [[UICollectionReusableView alloc] init];
//}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section
{
    return CGSizeMake(10, 0);
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout referenceSizeForFooterInSection:(NSInteger)section {
    return CGSizeMake(10, 0);
}
@end
