//
//  HZAlertBaseView.m
//  alertBaseView
//
//  Created by liudianling on 15/9/9.
//  Copyright (c) 2015年 zhaohengzhi. All rights reserved.
//

#import "HZAlertBaseView.h"

@interface HZAlertBaseView ()
@property(nonatomic,weak)UIView *coverView;

@end
@implementation HZAlertBaseView


- (instancetype)init
{
    
    return [self initWithContentView:nil];
}

-(instancetype)initWithContentView:(UIView *)contentView{
    
    self = [super init];
    if (self) {
        
        _autoRemove=YES;
        self.backgroundColor = [UIColor clearColor];
        //添加图层view
        UIView *coverView=[[UIView alloc] init];
        coverView.backgroundColor=[UIColor blackColor];
        _coverView=coverView;
        coverView.alpha = 0.0;
        [UIView animateWithDuration:0.4 animations:^{
            coverView.alpha = 0.5;
        }];
        [self addSubview:coverView];
        
       
        if (contentView) {
            _contentView=contentView;
            [_coverView addSubview:contentView];
            [self addAmineToView:contentView];
        }
    }
    return self;
}
-(void)show{
    [[UIApplication sharedApplication].keyWindow addSubview:self];
}

-(void)setContentView:(UIView *)contentView{
    _contentView=contentView;
    [_coverView addSubview:contentView];
    [self addAmineToView:contentView];
}
-(void)addAmineToView:(UIView *)aminView{
    CAKeyframeAnimation* animation = [CAKeyframeAnimation animationWithKeyPath:@"transform"];
    animation.duration = 0.25;
    NSMutableArray *values = [NSMutableArray array];
    [values addObject:[NSValue valueWithCATransform3D:CATransform3DMakeScale(0.1, 0.1, 1.0)]];
    [values addObject:[NSValue valueWithCATransform3D:CATransform3DMakeScale(1.0, 1.0, 1.0)]];
    animation.values = values;
    [aminView.layer addAnimation:animation forKey:nil];
    [self addSubview:aminView];
    
}

-(void)layoutSubviews{
    
    [super layoutSubviews];
    _coverView.frame=self.bounds;
    _contentView.center=self.center;
    self.frame=[UIScreen mainScreen].bounds;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    if (_autoRemove) {
        [self removeFromSuperview];
    }
}

-(void)remove{
    [self removeFromSuperview];
}

@end
