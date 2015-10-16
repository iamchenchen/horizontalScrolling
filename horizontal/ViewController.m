//
//  ViewController.m
//  horizontal
//
//  Created by Chenchen Zheng on 10/14/15.
//  Copyright © 2015 Chenchen Zheng. All rights reserved.
//

#import "ViewController.h"
#import "CCCollectionViewController.h"
#import "CCCollectionView.h"

@interface ViewController ()
//<UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>

//@property (nonatomic, strong) UICollectionView *collectionView;
@end

@implementation ViewController
//static NSString * const reuseIdentifier = @"Cell";


- (void)viewDidLoad {
    [super viewDidLoad];
    
    CCCollectionView *collection = [[CCCollectionView alloc] initWithFrame:CGRectMake(10, 50, self.view.bounds.size.width-20, 50) andItemSize:CGSizeMake(45, 45)];
    
    [self.view addSubview:collection];
    
}

- (void)getData:(void (^)(void))block {
    NSString *urlString = @"http://thecatapi.com/api/images/get?format=src&results_per_page=20&size-small&type=png";
    
    
    
}

@end
