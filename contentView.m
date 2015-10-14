
//
//  contentView.m
//  alertBaseView
//
//  Created by liudianling on 15/9/9.
//  Copyright (c) 2015年 zhaohengzhi. All rights reserved.
//

#import "contentView.h"

@implementation contentView

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self=[[[NSBundle mainBundle] loadNibNamed:@"contentView" owner:self options:nil] lastObject];
    }
    return self;
}


@end
