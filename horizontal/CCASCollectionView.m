//
//  CCASCollectionView.m
//  horizontal
//
//  Created by Chenchen Zheng on 10/15/15.
//  Copyright © 2015 Chenchen Zheng. All rights reserved.
//

#import "CCASCollectionView.h"

@interface CCASCollectionView () <ASCollectionViewDataSource, ASCollectionViewDelegate> {
    CGSize _itemSize;
    ASCollectionView *_collectionView;
}

@end
@implementation CCASCollectionView
static NSString * const reuseIdentifier = @"Cell";
//- (instancetype)initWithFrame:(CGRect)frame andItemSize:(CGSize)itemSize {
//    self = [super init];
//    if (self) {
//        [self setBackgroundColor:[UIColor redColor]];
//        
//        //set header
//        ASDisplayNode* header = [[ASDisplayNode alloc] initWithFrame:CGRectMake(0, 0, 30, frame.size.height)];
//        [header setBackgroundColor:[UIColor blackColor]];
//        [self addSubnode:header];
//        
//        _itemSize = itemSize;
//        
//        UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
//        [flowLayout setItemSize:itemSize];
//        [flowLayout setScrollDirection:UICollectionViewScrollDirectionHorizontal];
//        
//        CGRect collectionFrame = CGRectMake(header.frame.size.width, 0, frame.size.width- header.frame.size.width, frame.size.height);
//        
//        _collectionView = [[UICollectionView alloc] initWithFrame:collectionFrame collectionViewLayout:flowLayout];
//        
//        _collectionView.delegate = self;
//        _collectionView.dataSource = self;
//        [_collectionView setBackgroundColor:[UIColor blueColor]];
//        [self addSubview:_collectionView];
//        [_collectionView registerClass:[CCCollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
//    }
//    
//    return self;
//}



@end
