//
//  CCCollectionViewCell.m
//  horizontal
//
//  Created by Chenchen Zheng on 10/15/15.
//  Copyright © 2015 Chenchen Zheng. All rights reserved.
//

#import "CCCollectionViewCell.h"
#import <AsyncDisplayKit.h>

@interface CCCollectionViewCell ()
@property (nonatomic, strong) ASNetworkImageNode *imageNode;
@end

@implementation CCCollectionViewCell


- (instancetype)initWithFrame:(CGRect)frame; {
    self = [super initWithFrame:frame];
    if (self) {
//        self.backgroundColor = ASDisplayNodeDefaultPlaceholderColor();
        _imageNode = [[ASNetworkImageNode alloc] init];
        _imageNode.frame = CGRectMake(0, 0, frame.size.width, frame.size.height);
        _imageNode.backgroundColor = ASDisplayNodeDefaultPlaceholderColor();
        _imageNode.URL = [NSURL URLWithString:[NSString stringWithFormat:@"http://baconmockup.com/45/45"]];
//                                               ,
//                                               (NSInteger)roundl(45),
//                                               (NSInteger)roundl(45)]];
        [_imageNode addTarget:self action:@selector(onClickImage:) forControlEvents:ASControlNodeEventTouchUpInside];
        [self addSubnode:_imageNode];
    }
    return self;
}

- (void)onClickImage:(id)sender {
    NSLog(@"clicked %@", sender);
}

@end
